   M S B A M L   `   `   `  ����G  CTourAgenstvo, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null+clr-namespace:TourAgenstvoTourAgenstvo  5   	       TourAgenstvo.Autor   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   ,localclr-namespace:TourAgenstvo     5   	   _ [MaterialDesignThemes.Wpf, Version=4.9.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	     � Title$  Autor��5	   	   $	��550��6   $	��450��6$   .��5
      �  � RowDefinitions 5   
   �� 5      $
��auto �6   6,   �� 5      $��* �6   6)   .+�5   
   �� 
��� ���$��44��6%   63   �� 5   
    �� Orientation$ 
Horizontal=�6   .+�5      �� $��	130,0,0,0q�6   
���   �$��24(�5      $��Arial Black)�6"   $��Center=�6;   $��44��6X   $��Bottom=�6d   Авторизация5      5      �� 5   
   $��1��6   .+�5      �� -   5         ��Name$ login��5      )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Введите логин��6%    %  !MaterialDesignFloatingHintTextBox#��[  6T   $��60��6�    �� TextWrapping$
 Wrap=�6�   $��110,0q�6�   ���	#FFDA7108$��18(�6�    �� 
CaretBrush
 �   �6�   G� 5      -   5         G�Name$ password��5      $! Введите пароль��6,    ) %MaterialDesignFloatingHintPasswordBox#��[ 6\   ���	#FFDA7108$��18(�6�    G� 
CaretBrush
 �   �	 G� SelectionBrush
	 �   �$��110,0q�6�   $��60��6�   �� 5      -   5        $��
Войти��5      $��110,300,110,0q�6%   $��40��6<   ���	#FF110C1B���	#FF100A1B���	#FFDA71086�   5      �� 5    
   -   5        $��
Назад��5       $��	350,2,0,0q�6!   $	��Top=�64   $��81��6L   $
��Left=�6W   $��Verdana)�6r   
 � Cursor$

 Hand��6�   ���	#FF0E0D0D���	#FFDA7108
���   �6�   5!      5"      