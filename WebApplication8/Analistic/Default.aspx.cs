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
    }
}