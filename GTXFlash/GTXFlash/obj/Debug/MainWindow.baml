   M S B A M L   `   `   `  ����C  ?GTXFlash, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null#clr-namespace:GTXFlashGTXFlash  5      7 clr-namespace:GTXFlash.ViewModelGTXFlash.ViewModel  5          GTXFlash.MainWindow   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      (localclr-namespace:GTXFlash     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      /vm clr-namespace:GTXFlash.ViewModel     5        � Title$  GTXFlash��5	      $	��525��5
      $	��350��5       � DataContext 5      *   $GTXFlash.ViewModel.GTXFlashViewModel  5   
   -   5        vm��5      .��5      � ��5   
   �� 5       �� 
StartPoint$ 0.5,0&�6"    �� EndPoint$ 0.5,1&�65   .��5      �  � Offset$ 0Q�6    � Color$ Black��6*   � 5      $ 1Q�6   $ White��6*   5      .+�5   
   �� -   5         ��Name$ 
rootButton��5      $��86��5      $��48��5      $��191,130,0,0q�5      $
��Left=�5      $	��Top=�5      $��	Root unit��5       �� 5!   
   -   5         ��Name$ textBox��5"      $	��136��5#      $��35��5$      $��	42,48,0,0q�5%      $
��Left=�5&      $	��Top=�5'       �� TextWrapping$
 Wrap=�5)      ��5(      �� *	IPAddress+5)      �� 5*   
   -   5        $ connectButton��5+      $��65��5,      $��35��5-      $��
212,48,0,0q�5.      $
��Left=�5/      $	��Top=�50      $��Connect��51      �� 52   
   -   5        $ flashButton��53      $��86��54      $��35��55      $��191,203,0,0q�56      $
��Left=�57      $	��Top=�58      $��	Flash GTX��59      �� 5:   
   -   5        	 ��Name$	 	textBlock��5:      $
��Left=�6'   $��18��6B   $��
10,279,0,0q�6N   $
��Wrap=�6b   $	��Top=�6�   $	��368��6�   ��6v   �� *Status+
 �� UpdateSourceTrigger$
 PropertyChanged=�6�   5<      5=      