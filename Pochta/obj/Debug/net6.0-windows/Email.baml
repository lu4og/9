   M S B A M L   `   `   `  ����A  =Pochta, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:PochtaPochta  5   	       Pochta.Email   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   _ [MaterialDesignThemes.Wpf, Version=4.9.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962a9m1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   Dmc;http://schemas.openxmlformats.org/markup-compatibility/2006  5   	    localclr-namespace:Pochta  5   	     � Title$  Email��5	   	   $	��450��6   $	��800��6$   .��5
      �  � RowDefinitions 5   
   �� 5      $	��36* �6   �� 5      $	��45* �6   �� 5      $
��116* �6   �� 5      $	��20* �6    � ColumnDefinitions 5   
   �� 5      $	��19* �6   �� 5      $
��141* �6   .+�5   
   � -   5         �Name$ pb��5      $��
20,48,20,0q�6"   $��1��66   $��0,0,0,0q�6F    J� SnapsToDevicePixels$
 True��6`   ���	#FF843434$y�Hidden=�6�   $��2��6�   $��4��6�   $	��Top=�6�    J� Effect 5      -  'System.Windows.Media.Effects.BlurEffect  5      5      �� 5   
   -   5         ��Name$ emails��5      $��1��6"   $��0q�62   $y�Hidden=�6F   $��3��6Z    � ContextMenu 5      �� 5      .@�5      m� -   5        $%��Читать сообщение��5      69   m� 5      -   5        $.��(Ответить на сообщение��5      6>   5      5!      �� 5"   
   $��3��6   .+�5#      �� -   5        $��INBOX��5#      $��0q�69   �� 5$      -   5        $��Спам��5$      $��0q�68   �� 5%      -   5        $��Отправленные��5%      $��0q�6@   �� 5&      -   5        $��Корзина��5&      $��0q�6;   �� 5'      -	   5        $��Черновики��5'      $��0q�6=   �� 5(      -
   5        $��
Выйти��5(      $��0q�62   5)      �� 5*   
   $��Написать��6   $��Center=�6$   $��3��6A   $��Center=�6N   $��0q�6i   $��32��6}   $��93��6�   �� 5+   
   -   5         ��Name$ sp��5+      $��1��6!   ���	#FF2E1616$��71��6H   $��Center=�6T   $y�Hidden=�6o   .+�5,      �� -   5        	 ��Name$	 
To_message��5,      
 �� TextWrapping$

 Wrap=�6*   ���#Fff$��	TextBlock��6P    �� TextAlignment$ Center=�6a   $��12(�6x   $��Center=�6�   $��Center=�6�   �� 5-      -   5        $	 From_message��5-      $

 Wrap=�6,   ���#Fff$��	TextBlock��6R   $ Center=�6c   $��12(�6z   $��Center=�6�   $��Center=�6�   �� 5.      -   5        $	 Theme_message��5.      $

 Wrap=�6-   ���#Fff$��	TextBlock��6S   $ Center=�6d   $��12(�6{   $��Center=�6�   $��Center=�6�   5/      �� 50   
   -   5         ��Name$	 btn��50      $��1��6   $��Отправить��6.   $��Center=�6B   $��3��6_   $��Center=�6l   $��32��6�   $	��103��6�   $y�Hidden=�6�   6�   c� 51   
   -   5         c�Name$ tb��51      $��0,6,0,0q�6   $��1��60   $��1��6=   $��65��6M   $	��Top=�6Y   $��Center=�6q   $	��575��6�   $y�Hidden=�6�   ��6�   Z� ��6�   Z� .@�52      �� $��ApplicationCommands.Cut��6   ��67   0  *MaterialDesignThemes.Wpf.PackIconExtension     Kind$ 
ContentCut=��� 53      $��ApplicationCommands.Copy��6   ��68     $ ContentCopy=��� 54      $��ApplicationCommands.Paste��6   ��69     $ ContentPaste=��� 55      �� 56      $��ApplicationCommands.Undo��6   ��68     $
 Undo=��� 57      $��ApplicationCommands.Redo��6   ��68     $
 Redo=��� 58      �� 59      $&�� EditingCommands.IncreaseFontSize��6   $
��A↑��6@   $��15(�6N   �� 5:      $&�� EditingCommands.DecreaseFontSize��6   $
��A↓��6@   $��15(�6M   �� 5;      �� 5<      $ ��EditingCommands.ToggleBold��6   ��6:     $ 
FormatBold=��� 5=      $"��EditingCommands.ToggleItalic��6   ��6<     $ FormatItalic=�5>      �� 5?   
   -   5         ��Name$	 rtb��5?      $��1��6#   $��2��63   $y�Hidden=�6@   5@      5A      