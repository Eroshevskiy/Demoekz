   M S B A M L   `   `   `  ����G  CTourAgenstvo, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null+clr-namespace:TourAgenstvoTourAgenstvo  5   	       TourAgenstvo.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   ,localclr-namespace:TourAgenstvo     5   	   _ [MaterialDesignThemes.Wpf, Version=4.9.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	     � Title$3  -Туристическое агентство��5	   	   $	��455��6)   $	��805��69   $	��450��6H   $	��800��6X   .��5
      � $��0,0,0,5q�6    � RowDefinitions 5   
   �� 5      $
��auto �6   6,   �� 5      $
��Auto �6   .+�5   
   �� 
��� ��� �� CornerRadius$ 20��6%    J� Effect 5      3  -System.Windows.Media.Effects.DropShadowEffect  5         
BlurRadius$ 30Q�6#      Color$ 	LightGray��63      ShadowDepth$ 0Q�6E   5      �� 5   
    �� Orientation$ 
Horizontal=�6   .+�5      �� $��images/logo.png��6   $��10,0,0,0q�6-   �� 5      $��40 0 0 0q�6   
���   �$��Center=�5      $��24(�5      $��Arial Black)�6"   �� 6<   $3�-Туристическое агентство��6@   6b   �� 5      -   5        $��180,9,250,9q�5      
���   �$��Right=�6>   $	��123��6Z   $��40��6f   $��Авторизация��6r   $	��123��6�   $��40��6�   ���	#FFF59F00
���   �6�   5#      �� 5%   
   $��2��6   .+�5&      �� -   5         ��Name$ login��5&      )  #MaterialDesignThemes.Wpf.HintAssist	   Hint$	 Введите логин��6%    %  !MaterialDesignFloatingHintTextBox#��[  6T   $��10,36,583,0q�6�   $��1��6�   ���	#FFE66F0C$��18(�6�   
 �� 
CaretBrush

 �   �6�   G� 5'      -   5         G�Name$
 pass��5'      $!	 Введите пароль��6(    ) %MaterialDesignFloatingHintPasswordBox#��[ 6X   $��
10,0,583,0q�6�   ���	#FFE66F0C$��18(�6�    G� 
CaretBrush
 �   � G� SelectionBrush
 �   �6�   G� 5(      -   5        $ proof��5(      $%	 Повторите пароль��6)   #��[ 6[   $��
10,0,583,0q�6�   $��1��6�   ���	#FFE66F0C$��18(�6�   
 �   �
 �   �6�   �� 5)      -   5        $*��$Зарегистрироваться��5)       " MaterialDesignFlatAccentButton#��[ 62   $
��Left=�6j   $��10,100,0,20q�6�   $	��Top=�6�   $	��167��6�   ���	#FFEA8A00���	#DD0000006�   5*      5.      5/      