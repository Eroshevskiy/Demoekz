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

namespace TourAgenstvo
{
    /// <summary>
    /// Логика взаимодействия для MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();

        }

        private void Autor_Click(object sender, RoutedEventArgs e)
        {
           
        }

        private void reg_Click(object sender, RoutedEventArgs e)
        {
            string log = login.Text;
            string pas = pass.Password;
            string proo = proof.Password;

            if (log.Length < 5)
            {
                login.ToolTip = "Мало символов!";
                login.Background = Brushes.Red;

            }
            else if (pas.Length < 5)
            {
                pass.ToolTip = "Мало символов!";
                pass.Background = Brushes.Red;
            }
            else if (proo!=pas)
            {
                proof.ToolTip = "Повторите попытку!";
                proof.Background = Brushes.Red;
            }
            
            
            else
            {
                login.ToolTip = "";
                login.Background = Brushes.Transparent;
                pass.ToolTip = "";
                pass.Background = Brushes.Transparent;
                proof.ToolTip = "";
                proof.Background = Brushes.Transparent;
                
            }
        }
    }
}
