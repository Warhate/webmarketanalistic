using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication8.Analistic
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (this.IsPostBack)
            {

                SetVisible();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        private void SetVisible()
        { 
            if(CBAge.Checked)
            {
                LabelAge.Visible = true;
                GridViewAge.Visible = true;
                
            
            }

            else
            {
                LabelAge.Visible = false;
                GridViewAge.Visible = false;
            
            }

            if (CBCity.Checked)
            {
                GridViewCity.Visible = true;


            }

            else
            {
                GridViewCity.Visible = false;

            }

            if (CBCountry.Checked)
            {
                GridViewCountry.Visible = true;


            }

            else
            {
                GridViewCountry.Visible = false;

            }


            if (CBProfession.Checked)
            {
                LabelProffesion.Visible = true;
                GridViewProfession.Visible = true;


            }

            else
            {
                LabelProffesion.Visible = false;
                GridViewProfession.Visible = false;
            }

            if (CBSex.Checked)
            {
                LabelSex.Visible = true;
                GreedViewSex.Visible = true;
                ChartSex.Visible = true;


            }

            else
            {
                LabelSex.Visible = false;
                GreedViewSex.Visible = false;
                ChartSex.Visible = false;
            }

            if (!CBCity.Checked && !CBCountry.Checked)
            {
                LabelCountry.Visible = false;

            }

            else
            {

                LabelCountry.Visible = true;
            }
        
        
        }
    }
}