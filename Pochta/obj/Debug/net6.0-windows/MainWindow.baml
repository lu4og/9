   M S B A M L   `   `   `  ����A  =Pochta, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:PochtaPochta  5   	       Pochta.MainWindow   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   _ [MaterialDesignThemes.Wpf, Version=4.9.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962a9m1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   Dmc;http://schemas.openxmlformats.org/markup-compatibility/2006  5   	    localclr-namespace:Pochta  5   	     � Title$
  Auth��5	   	   $	��300��6   $	��500��6#    � 
ResizeMode$ NoResize=�6/   .��5
      �  � ColumnDefinitions 5   
   �� 5      $	��91* �6   �� 5      $	��34* �6    � RowDefinitions 5   
   �� 5      $��9* �6   �� 5      $	��21* �6   �� 5      $	��41* �6   .+�5   
   �� -   5         ��Name$ login��5      $��	10,34,6,0q�6!    �� TextWrapping$
 Wrap=�64   $	��Top=�6I   $��34��6a   $��20(�6m   $
��Bold"�6{   $��1��6�   G� 5   
   -   5         G�Name$ password��5      $��
10,41,10,0q�6(   $	��Top=�6=   $��34��6U   $��20(�6a   $
��Bold"�6o   $��2��6�   $��2��6�   �� 5   
   -   5         ��Name$ cb��5      $��	6,33,10,0q�6   $	��Top=�62   $��20(�6J   $��1��6X   $��1��6e   .@�5      �� $
��Mail��6   
 � Tag$ imap.mail.ru��6*   �� 5      $��Yandex��6   $ imap.yandex.ru��6,   �� 5      $��Rambler��6   $ imap.rambler.ru��6-   �� 5      $��Google��6   $ imap.gmail.com��6,   5      �� 5   
   -   5        $��
Войти��5      $��232,103,0,0q�6!   $	��Top=�66   $
��Left=�6N   ���	#FF4A405C$��2��6�   $��0q�6�   �� 5   
   $
��Left=�6   $��
233,10,0,0q�6/   $��1��6C   $
��Wrap=�6P   $��
Логин��6d   $	��Top=�6q   �� 5   
   $��1��6   $
��Left=�6$   $��	59,10,0,0q�6?   $��1��6R   $
��Wrap=�6_   $
��Host��6s   $	��Top=�6   �� 5   
   $
��Left=�6   $��2��6/   $
��Wrap=�6<   $��Пароль��6P   $	��Top=�6^   $��
229,14,0,0q�6v   5       5!      