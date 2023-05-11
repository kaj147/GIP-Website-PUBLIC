using GIP_Website.Classes;
using GIP_Website.Database;
using GIP_Website.Interfaces;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GIP_Website.Website_Page_s
{
    public partial class Components : System.Web.UI.Page
    {
        public int teller = 0;
        public DataTable dt = new DataTable();
        DatabaseAccess database = new DatabaseAccess();
        AGVState agv = (AGVState)Enum.Parse(typeof(AGVState), "CACHING");

        async void Page_Load(object sender, EventArgs e)
        {
            dt.Columns.Add("Component");
            dt.Columns.Add("Aantal");
            dt.Columns.Add("Pad");

            AutoPhaseAlerts.Value = "";

            List<ListComponent> comp = await database.GetAllComponents();

            try
            {
                if (comp != null)
                {
                    foreach (var x in comp)
                    {
                        dt.Rows.Add(x.ComponentName.ToString(), x.Amount.ToString(), ConvertColor.ConvertStringToColor(x.Path.ToString()));
                    }
                    DataTable.DataSource = dt;
                    DataTable.DataBind();
                }
            }
            catch (Exception)
            {
                AutoPhaseAlerts.Value = "Fout opgetreden bij het ophalen van de data.";
            }

            List<ListComponent> alert = await database.AlertComponent();

            try
            {

                if (alert != null)
                {
                    foreach (var x in alert)
                    {
                        Alert.Visible = true;
                    }
                }
            }
            catch
            {
                AutoPhaseAlerts.Value = "Fout opgetreden bij het ophalen van de Alerts";
            }
            finally
            {
                AutoPhaseAlerts.Value = agv.ToString();
            }
        }
        protected async void btnAdd_Click(object sender, EventArgs e)
        {
            Color color;

            try
            {
                if (Pad.SelectedValue == "")
                {
                    color = Color.Blauw;
                }
                else
                {
                    color = ConvertColor.ConvertStringToColor(Pad.SelectedValue);
                }

                await database.AddComponent(new ListComponent
                {
                    ComponentName = Component.Value,
                    Amount = Convert.ToInt32(Aantal.Value),
                    Path = Color.Blauw
                }); //De API is geconfigureerd dat die een naam, amount en kleur gaat krijgen deze moeten dan ook verstuurd worden dus wordt dit meegestuurd maar wordt toch niet gebruikt
            }
            catch
            {
                AutoPhaseAlerts.Value = "Fout opgetreden bij het toevoegen van het component";
            }
            finally
            {
                dt.AcceptChanges();
            }
        }
        protected async void btnUpdate_Click(object sender, EventArgs e)
        {
            try
            {


                await database.UpdateComponent(new ListComponent
                {
                    ComponentName = Component.Value,
                    Amount = Convert.ToInt32(Aantal.Value),
                    Path = Color.Blauw
                }); //De API is geconfigureerd dat die een naam, amount en kleur gaat krijgen deze moeten dan ook verstuurd worden dus wordt dit meegestuurd maar wordt toch niet gebruikt
            }
            catch
            {
                AutoPhaseAlerts.Value = "Fout opgetreden bij het ophalen van het component";
            }
            finally
            {
                Response.Redirect(Request.RawUrl);
            }
        }
        protected async void btnDelete_Click(object sender, EventArgs e)
        {
            try
            {
                await database.DeleteComponent(new ListComponent
                {
                    ComponentName = Component.Value,
                    Amount = Convert.ToInt32(0),
                    Path = Color.Blauw
                }); //De API is geconfigureerd dat die een naam, amount en kleur gaat krijgen deze moeten dan ook verstuurd worden dus wordt dit meegestuurd maar wordt toch niet gebruikt
            }
            catch
            {
                AutoPhaseAlerts.Value = "Fout opgetreden bij het verwijderen van het component";
            }
            finally
            {
                Response.Redirect(Request.RawUrl);
            }
        }
    }
}