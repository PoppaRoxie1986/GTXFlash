using SharpAdbClient;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Text;
using System.Threading;
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

namespace GTXFlash
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        ADBUtilities adb;

        public MainWindow()
        {
            InitializeComponent();
            adb = new ADBUtilities(vm); 
        }


        private void rootUnit_Click(object sender, RoutedEventArgs e)
        {
            adb.startADB();
            /*
            var devices = AdbClient.Instance.GetDevices();

            foreach (var device in devices)
            {
                Console.WriteLine(device.Name);
            }
            */
        }

    }
}
