using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication8
{
    public partial class WebForm7 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                txtFirstName.Text = WebProfile.Current.FirstName;
                txtMidleName.Text = WebProfile.Current.MidleName;
                txtLastName.Text = WebProfile.Current.LastName;
                txtAge.Text = WebProfile.Current.Age.ToString();
                txtPorofession.Text = WebProfile.Current.Profession;
                DDListSex.Text = WebProfile.Current.Sex;

                TxtCountry.Text = WebProfile.Current.Country;
                TxtCity.Text = WebProfile.Current.City;
                TxtOblast.Text = WebProfile.Current.Obl;
                TxtRAyon.Text = WebProfile.Current.Rayon;
                TxtDom.Text = WebProfile.Current.Dom;
                TxtRoom.Text = WebProfile.Current.Room;
                TxtIndex.Text = WebProfile.Current.Index;
                TxtStreet.Text = WebProfile.Current.Street;

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            WebProfile.Current.FirstName = txtFirstName.Text;
            WebProfile.Current.MidleName = txtMidleName.Text;
            WebProfile.Current.LastName = txtLastName.Text;
            WebProfile.Current.Age = Convert.ToInt32(txtAge.Text);
            WebProfile.Current.Profession = txtPorofession.Text;
            WebProfile.Current.Sex = DDListSex.Text;
            WebProfile.Current.Country = TxtCountry.Text;
            WebProfile.Current.City = TxtCity.Text;
            WebProfile.Current.Obl = TxtOblast.Text;
            WebProfile.Current.Rayon = TxtRAyon.Text;
            WebProfile.Current.Dom = TxtDom.Text;
            WebProfile.Current.Room = TxtRoom.Text;
            WebProfile.Current.Index = TxtIndex.Text;
            WebProfile.Current.Street = TxtStreet.Text;
            WebProfile.Current.Save();
            ProfileEdit pe = new ProfileEdit();
            Label1.Text =  pe.ProfileAdd();
        }
    }
}