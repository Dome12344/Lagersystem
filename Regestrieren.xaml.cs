using System.Data.SqlClient;
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


namespace Lagersystemverwaltung
{
    /// <summary>
    /// Interaktionslogik für Regestrieren.xaml
    /// </summary>
    public partial class Regestrieren : Window
    {
        public Regestrieren()
        {
            InitializeComponent();
        }

        private void regestriere_Click(object sender, RoutedEventArgs e)
        {
           
                try
                {
                    SqlConnection con = new SqlConnection(@"Server=DESKTOP\MYSQLSERVER;Database=FirmaMetal;Integrated Security = True");
                    con.Open();
                    string add_data = "INSERT INTO [dbo].[mitarbeiter] VALUES (@benutzername, @passwortcode,@vorname,@nachname,@mitarbeiternummer,@email,@telefonnummer)";
                    SqlCommand cmd = new SqlCommand(add_data, con);
                    cmd.Parameters.AddWithValue("@benutzername", BN.Text);
                    cmd.Parameters.AddWithValue("@passwortcode", passwortcode.Password);
                    cmd.Parameters.AddWithValue("@vorname", VN.Text);
                    cmd.Parameters.AddWithValue("@nachname", NN.Text);
                    cmd.Parameters.AddWithValue("@mitarbeiternummer", MN.Text);
                    cmd.Parameters.AddWithValue("@email", WM.Text);
                    cmd.Parameters.AddWithValue("@telefonnummer", TN.Text);
                    cmd.ExecuteNonQuery();
                    con.Close();
                    BN.Text = "";
                    passwortcode.Password = "";
                    VN.Text = "";
                    NN.Text = "";
                    MN.Text = "";
                    WM.Text = "";
                    TN.Text = "";

                    MainWindow mainWindow = new MainWindow();
                    this.Close();
                    mainWindow.Show();

                }
                catch
                {

                }
            
        }

        private void Back_Click(object sender, RoutedEventArgs e)
        {
            if(Back.IsEnabled == true)
            {
                MainWindow mainWindow = new MainWindow();
                mainWindow.Show();
                this.Close();
            }

        }
    }
}
