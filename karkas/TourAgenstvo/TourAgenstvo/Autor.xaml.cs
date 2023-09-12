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
using System.Windows.Shapes;

namespace TourAgenstvo
{
    /// <summary>
    /// Логика взаимодействия для Autor.xaml
    /// </summary>
    public partial class Autor : Window
    {
        public Autor()
        {
            InitializeComponent();
        }

        private void OpenMain(object sender, RoutedEventArgs e)
        {
            MainWindow objMainWindow = new MainWindow();
            this.Visibility = Visibility.Hidden;
            objMainWindow.Show();

        }

        

        private void VhodClick(object sender, RoutedEventArgs e)
        {
            string log = login.Text;
            string pas = password.Password;

            bool hasError = false;


            if (log.Length < 5)
            {
                login.ToolTip = "Мало символов!";
                login.BorderBrush = Brushes.Red;
                hasError = true;
            }
            else if (!ContainsEnglishLetters(log))
            {
                login.ToolTip = "Нет английских букв!";
                login.BorderBrush = Brushes.Red;
                hasError = true;
            }
            else
            {
                login.ToolTip = "Все хорошо!";
                login.BorderBrush = Brushes.LimeGreen;
            }

            if (pas.Length < 5)
            {
                password.ToolTip = "Мало символов!";
                password.BorderBrush = Brushes.Red;
                hasError = true;
            }
            else
            {
                password.ToolTip = "Все хорошо!";
                password.BorderBrush = Brushes.LimeGreen;
            }

            if (!hasError)
            {
                MainWindow MainWindow = new MainWindow();
                MainWindow.Show();


                Close();
            }
        }

        private bool ContainsEnglishLetters(string input)
        {
            
            return input.Any(char.IsLetter) && input.Any(char.IsLetterOrDigit);
        }
    }
}
