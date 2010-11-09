using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication8
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                txtFirstName.Text = WebProfile.Current.FirstName;
                txtMidleName.Text = WebProfile.Current.MidleName;
                txtLastName.Text = WebProfile.Current.LastName;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
               WebProfile.Current.FirstName = txtFirstName.Text;
               WebProfile.Current.MidleName = txtMidleName.Text;
               WebProfile.Current.LastName = txtLastName.Text;
               WebProfile.Current.Save();
             
        }
    }
}