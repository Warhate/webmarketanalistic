using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace WebApplication8.Analistic
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(Varibles.ConectionString);
           
        
        
        
        
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                SetVisible();
            
            }

        }


        protected void Button1_Click(object sender, EventArgs e)
        {
          
           
        }

        protected void Chart1_Load(object sender, EventArgs e)
        {
            
        }

        protected void SqlDataSource2_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {

        }

        /// <summary>
        /// Выбор статистики которую нужно показать
        /// </summary>
        private void SetVisible()
        {
            if (CBFirm.Checked)
            {
                LabelFirm.Visible = true;
                ChartFirm.Visible = true;
                GridViewFirm.Visible = true;

            }

            else
            {
                LabelFirm.Visible = false;
                ChartFirm.Visible = false;
                GridViewFirm.Visible = false;
            
            
            }

            if (CBGroup.Checked)
            {
                LabelGroup.Visible = true;
                ChartGroup.Visible = true;
                GridViewGroup.Visible = true;

            }
            else
            {
                LabelGroup.Visible = false;
                ChartGroup.Visible = false;
                GridViewGroup.Visible = false;
            
            }

            if (CBProduct.Checked)
            {
                LabelProduct.Visible = true;
                GridViewProduct.Visible = true;

            }
            else
            {
                LabelProduct.Visible = false;
                GridViewProduct.Visible = false;
            }
        
        
        }

    }
}