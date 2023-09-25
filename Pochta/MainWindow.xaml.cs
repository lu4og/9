using Post_client_9;
using Spire.Doc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace Pochta
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            if (cb.SelectedIndex != -1 && password.Password != "" && login.Text != "")
            {
                try
                {
                    ImappHelper.Initialize((cb.SelectedItem as ComboBoxItem).Tag.ToString());
                    if (ImappHelper.Login(login.Text, password.Password))
                    {
                        new Email().Show();
                        Close();
                    }
                    else
                        MessageBox.Show("Ошибка входа");
                }
                catch { }
            }
        }
    }
}
