   M S B A M L   `   `   `  ���� C  ?GTXFlash, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null#clr-namespace:GTXFlashGTXFlash  7 clr-namespace:GTXFlash.ViewModelGTXFlash.ViewModel      GTXFlash.MainWindow   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     (localclr-namespace:GTXFlash     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     /vm clr-namespace:GTXFlash.ViewModel       � Title$  GTXFlash��$	��525��$	��350�� � DataContext *   $GTXFlash.ViewModel.GTXFlashViewModel  -   vm��.��� ����  �� 
StartPoint$ 0.5,0&� �� EndPoint$ 0.5,1&�.���  � Offset$ 0Q� � Color$ Black��� $ 1Q�$ White��.+��� -    ��Name$ 
rootButton��$��86��$��48��$��191,130,0,0q�$
��Left=�$	��Top=�$��	Root unit���� -    ��Name$ textBox��$	��136��$��35��$��	42,48,0,0q�$
��Left=�$	��Top=� �� TextWrapping$
 Wrap=����� *	IPAddress+�� -   $ connectButton��$��65��$��35��$��
212,48,0,0q�$
��Left=�$	��Top=�$��Connect���� -   $ flashButton��$��86��$��35��$��191,203,0,0q�$
��Left=�$	��Top=�$��	Flash GTX���� -   	 ��Name$	 	textBlock��$
��Left=�$��18��$��
10,279,0,0q�$
��Wrap=�$	��Top=�$	��368������ *Status+
 �� UpdateSourceTrigger$
 PropertyChanged=�