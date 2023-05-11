using GIP_Website.Classes;
using GIP_Website.Database;
using System;
using System.Collections.Generic;
using System.Data.OleDb;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GIP_Website.Website_Page_s
{
    public partial class Data : System.Web.UI.Page
    {
        async void Page_Load(object sender, EventArgs e)
        {
            string query = "SELECT Time, DataUltrasone, DataKleuren, DataTemp FROM DataLog;";

            DatabaseAccess database = new DatabaseAccess();

            List<ListComponent> alert = await database.AlertComponent();

            if (alert != null)
            {
                foreach (var x in alert)
                {
                    Alert.Visible = true;
                }
            }
        }

        void RetrieveData(string connectionString, string query)
        {
            OleDbConnection connection = new OleDbConnection();
            connection.ConnectionString = connectionString;

            try
            {
                connection.Open();

                OleDbCommand command = new OleDbCommand();
                command.Connection = connection;
                command.CommandText = query;

                OleDbDataReader reader = command.ExecuteReader();

                while (reader.Read())
                {
                    DataLog.Text += $"Tijd: {reader[0]} Ultrasonen: {reader[1]}m Kleur: {reader[2]} Temperatuur: {reader[3]}°C\r\n";
                }
            }
            catch (OleDbException error)
            {
                DataLog.Text = $"ERROR: {error}";
            }
            finally
            {
                connection.Close();
            }
        }
    }
}