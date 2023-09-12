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
                pass.ToolTip = "Мало символов!";
                pass.BorderBrush = Brushes.Red;
                hasError = true; 
            }
            else
            {
                pass.ToolTip = "Все хорошо!";
                pass.BorderBrush = Brushes.LimeGreen;
            }

            if (proo != pas)
            {
                proof.ToolTip = "Повторите попытку!";
                proof.BorderBrush = Brushes.Red;
                hasError = true; 
            }
            else
            {
                proof.ToolTip = "Все хорошо!";
                proof.BorderBrush = Brushes.LimeGreen;
            }

            if (!hasError)
            {
                Autor AutorWindow = new Autor (); 
                AutorWindow.Show();

                
                Close();
            }
        }

        private bool ContainsEnglishLetters(string input)
        {
            
            return input.Any(char.IsLetter) && input.Any(char.IsLetterOrDigit);
        }








        private void OpenAutor(object sender, RoutedEventArgs e)
        {
            Autor objAutor = new Autor();
            this.Visibility = Visibility.Hidden;
            objAutor.Show();
        }
    }
}
