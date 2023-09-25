using HtmlRtf;
using ImapX;
using ImapX.Collections;
using Post_client_9;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net.Mail;
using System.Net;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;
using static System.Net.Mime.MediaTypeNames;

namespace Pochta
{
    /// <summary>
    /// Логика взаимодействия для Email.xaml
    /// </summary>
    public partial class Email : Window
    {
        MessageCollection messages { get; set; }
        List<string> themes { get; set; } = new List<string>();
        static bool isload = false;
        static bool isread = false;

        public Email()
        {
            InitializeComponent();
            loaded();
            downloadMessages("INBOX");
        }

        private void CheckEmails(object sender, RoutedEventArgs e) => downloadMessages((sender as Button).Content.ToString());


        private void CheckEmailsMessage(object sender, RoutedEventArgs e)
        {
            if (sender == null) return;
            emails.Visibility = Visibility.Hidden;
            if (messages == null)
                return;
            btn.Content = "Ответить";
            set_vis(true);
            Message msg = messages[emails.SelectedIndex];
            To_message.Text = msg.To[0].ToString();
            From_message.Text = msg.From.ToString();
            Theme_message.Text = msg.Subject == null ? "<Без темы>" : msg.Subject.ToString();
            try
            {
                string a = msg.Body.Html;
                HtmlRtfConverter.ToRtf(a);
                var text = new TextRange(rtb.Document.ContentStart, rtb.Document.ContentEnd);
                FileStream fs = new FileStream("msg.rtf", FileMode.Open);
                text.Load(fs, DataFormats.Rtf);
                fs.Close();
                File.Delete("msg.rtf");
            }
            catch { }
        }
        void set_vis(bool vis)
        {
            isread = vis == true ? true : false;
            rtb.Visibility = vis == true ? Visibility.Visible : Visibility.Hidden;
            sp.Visibility = vis == true ? Visibility.Visible : Visibility.Hidden;
            btn.Visibility = vis == true ? Visibility.Visible : Visibility.Hidden;
            tb.Visibility = vis == true ? Visibility.Visible : Visibility.Hidden;

        }
        private void WriteMessage(object sender, RoutedEventArgs e)
        {
            set_vis(true);
            emails.Visibility = Visibility.Hidden;
            btn_Click(sender, e);
        }

        private void Exit(object sender, RoutedEventArgs e)
        {
            ImappHelper.Logout();
            new MainWindow().Show();
            Close();
        }

        async Task downloadMessages(string folder)
        {
            set_vis(false);
            loaded();
            await Task.Run(() =>
            {
                messages = ImappHelper.GetMessagesForFolder(folder);
            });
            isload = true;
            if (messages == null)
                return;
            themes.Clear();
            foreach (Message message in messages)
            {
                if (message.Subject == null)
                    themes.Add($"{message.To[0]} : <Без темы>");
                else
                    themes.Add($"{message.To[0]} : {message.Subject}");
            }
            emails.ItemsSource = null;
            emails.ItemsSource = themes;

        }
        async Task loaded()
        {
            isload = false;
            pb.Visibility = Visibility.Visible;
            emails.Visibility = Visibility.Hidden;
            await load();
            pb.Value = 100;
            pb.Visibility = Visibility.Hidden;
            emails.Visibility = Visibility.Visible;
        }
        async Task load()
        {
            while (true)
            {
                for (int i = 1; i < 101; i++)
                {
                    pb.Value = i;
                    await Task.Delay(300);
                    if (isload)
                        return;
                }
            }
        }

        private void btn_Click(object sender, RoutedEventArgs e)
        {
            if (isread)
            {
                btn.Content = "Отправить";
                To_message.Text = From_message.Text;
                From_message.Text = ImappHelper.GetCredentials().Email;
                new TextRange(rtb.Document.ContentStart, rtb.Document.ContentEnd).Text = "";
                isread = false;
            }
            else
            {
                var user = ImappHelper.GetCredentials();
                var range = new TextRange(rtb.Document.ContentStart, rtb.Document.ContentEnd);
                HtmlRtfConverter.ToHtml(range);
                MailMessage mail = new MailMessage(user.Email,To_message.Text,Theme_message.Text, File.ReadAllText("send.html"));
                mail.IsBodyHtml = true;
                SmtpClient smtp = new SmtpClient(user.SmtpHost);
                smtp.Credentials = new NetworkCredential(user.Email, user.Pass);
                smtp.EnableSsl = true;
                try
                {
                    smtp.Send(mail);
                    MessageBox.Show("Сообщение успешно отправлено!");
                }
                catch
                {
                    MessageBox.Show("Возникла ошибка при отправки сообщения - оно не было отправлено!");
                }
                downloadMessages("INBOX");
            }
        }

        private void emails_MouseDoubleClick(object sender, MouseButtonEventArgs e)
        {

            if ((sender as ListBox).SelectedItem == null) return;
            emails.Visibility = Visibility.Hidden;
            if (messages == null)
                return;
            btn.Content = "Ответить";
            set_vis(true);
            Message msg = messages[emails.SelectedIndex];
            To_message.Text = msg.To[0].ToString();
            From_message.Text = msg.From.ToString();
            Theme_message.Text = msg.Subject == null ? "<Без темы>" : msg.Subject.ToString();
            try
            {
                string a = msg.Body.Html;
                HtmlRtfConverter.ToRtf(a);
                var text = new TextRange(rtb.Document.ContentStart, rtb.Document.ContentEnd);
                FileStream fs = new FileStream("msg.rtf", FileMode.Open);
                text.Load(fs, DataFormats.Rtf);
                fs.Close();
                File.Delete("msg.rtf");
            }
            catch { }
        }
    }
}
