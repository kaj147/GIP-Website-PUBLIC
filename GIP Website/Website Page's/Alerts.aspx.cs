using GIP_Website.Classes;
using GIP_Website.Database;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GIP_Website.Website_Page_s
{
    public partial class Alerts : System.Web.UI.Page
    {
        async void Page_Load(object sender, EventArgs e)
        {
            DatabaseAccess database = new DatabaseAccess();

            List<ListComponent> comp = await database.AlertComponent();

            if (comp != null)
            {
                foreach (var x in comp)
                {
                    Alert.Visible = true;
                    AlertLog.Text += $"Het Component {x.ComponentName} Heeft nog maar {x.Amount} in stock op pad {x.Path}\n\r\n\r";
                }
            }
        }
    }
}