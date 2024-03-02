using System;
using System.Collections.Generic;
using System.Data.SqlClient;
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

namespace Lagersystemverwaltung
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }

        private void Regiester_Click(object sender, RoutedEventArgs e)
        {
            if (Regiester.IsEnabled == true)
            {
                Regestrieren rg = new Regestrieren();
                rg.Show();
                this.Close();
            }
        }

        private void Passwort_Vergess_Click(object sender, RoutedEventArgs e)
        {
            if(Passwort_Vergess.IsEnabled == true)
            {
                Passwort_Vergessen passwort_Vergessen = new Passwort_Vergessen();
                passwort_Vergessen.Show();
                this.Close();
            }
        }

        private void Login_Click(object sender, RoutedEventArgs e)
        {
            if(Login.IsEnabled == true) 
            {
                try
                {
                    SqlConnection con = new SqlConnection(@"Server=DESKTOP\MYSQLSERVER;Database=FirmaMetal;Integrated Security = True");
                    con.Open();
                    string add_data = "SELECT * FROM [dbo].[mitarbeiter] where benutzername=@benutzername and passwortcode=@passwortcode ";
                    SqlCommand cmd = new SqlCommand(add_data, con);

                    cmd.Parameters.AddWithValue("@benutzername", Benutzer_name.Text);
                    cmd.Parameters.AddWithValue("@passwortcode", Passwort_Code.Password);
                    cmd.ExecuteNonQuery();
                    int count = Convert.ToInt32(cmd.ExecuteScalar());
                    con.Close();
                    Benutzer_name.Text = "";
                    Passwort_Code.Password = "";
                    if (count > 0)
                    {
                        Auswahlbildschirm Auswahl = new Auswahlbildschirm();
                        this.Close();
                        Auswahl.Show();
                    }
                    else
                    {
                        MessageBox.Show("Passwort oder Username falsch");
                    }

                }
                catch
                {

                }
            }
        }
        
    }
}
