using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication8.Tray
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        int id;
        protected void Page_Load(object sender, EventArgs e)
        {

            if (HttpContext.Current.Request.QueryString.Count != 0)
            {

                   
                    id = Convert.ToInt32(HttpContext.Current.Request.QueryString["ID"]);

                    AddTray addTray = new AddTray();
                    LabelMessage.Text =  addTray.AddToTray(id);

                }
        }

        protected void Wizard1_FinishButtonClick(object sender, WizardNavigationEventArgs e)
        {

        }
    }
}