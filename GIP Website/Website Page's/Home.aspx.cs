using GIP_Website.Classes;
using GIP_Website.Database;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GIP_Website
{
    public partial class Home : System.Web.UI.Page
    {
        async void Page_Load(object sender, EventArgs e)
        {
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
    }
}