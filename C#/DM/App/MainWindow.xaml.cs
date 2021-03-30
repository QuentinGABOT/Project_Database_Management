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
using System.Security;

namespace Appli
{
    /// <summary>
    /// Logique d'interaction pour MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
            
        }
        private void Button_Quitter(object sender, EventArgs e)
        {
            Close();
        }
        private void Button_SeConnecter(object sender, EventArgs e)
        {
            string id = ID.Text;
            SecureString mdp = MDP.SecurePassword;
            Window fenetre2 = new Window();
            fenetre2.Show();
            this.Close();
            
        }
    }
}
