using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication8.Administrator
{
    public partial class WebForm9 : System.Web.UI.Page
    {
        String UserName;
        protected void Page_Load(object sender, EventArgs e)
        {

            if (HttpContext.Current.Request.QueryString.Count != 0)
            {


                UserName = Convert.ToString(HttpContext.Current.Request.QueryString["User"]);
                LabelLogin.Text = UserName;

                LabelFirstName.Text = WebProfile.GetProfile(UserName).FirstName;
                LabelMidleName.Text = WebProfile.GetProfile(UserName).MidleName;
                LabelLastName.Text = WebProfile.GetProfile(UserName).LastName;
                LabelCountry.Text = WebProfile.GetProfile(UserName).Country;
                LabelCity.Text = WebProfile.GetProfile(UserName).City;
                LabelObl.Text = WebProfile.GetProfile(UserName).Obl;
                LabelRayon.Text = WebProfile.GetProfile(UserName).Rayon;
                LabelStreet.Text = WebProfile.GetProfile(UserName).Street;
                LabelDom.Text = WebProfile.GetProfile(UserName).Dom;
                LabelRoom.Text = WebProfile.GetProfile(UserName).Room;
                LabelIndex.Text = WebProfile.GetProfile(UserName).Index;

            }
        }
    }
}