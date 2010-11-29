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
            if (!this.IsPostBack)
            {
                if (HttpContext.Current.Request.QueryString.Count != 0)
                {


                    id = Convert.ToInt32(HttpContext.Current.Request.QueryString["ID"]);

                    AddTray addTray = new AddTray();
                    addTray.AddToTray(id);

                }
                if (!GridView1.Visible)
                {
                    DetailsView1.Visible = false;
                    BtnDel.Visible = false;
                
                }


                LabelCountry.Text = WebProfile.Current.Country;
                LabelCity.Text = WebProfile.Current.City;
                LabelObl.Text = WebProfile.Current.Obl;
                LabelRayon.Text = WebProfile.Current.Rayon;
                LabelIndex.Text = WebProfile.Current.Index;
                LabelStreet.Text = WebProfile.Current.Street;
                LabelDom.Text = WebProfile.Current.Dom;
                LabelRoom.Text = WebProfile.Current.Room;





            }
        }

        protected void Wizard1_FinishButtonClick(object sender, WizardNavigationEventArgs e)
        {

        }

        protected void FinishButton_Click(object sender, EventArgs e)
        {
            AddTray addTray = new AddTray();
            addTray.Buy();
        }

        protected void BtnDel_Click(object sender, EventArgs e)
        {
            AddTray addTray = new AddTray();
            addTray.Del(GridView1.SelectedRow.Cells[3].Text);
            GridView1.DataBind();
            DetailsView1.DataBind();
        }
    }
}