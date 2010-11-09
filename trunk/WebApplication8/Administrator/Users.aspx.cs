using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication8.Administrator
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            EditUsers eu = new EditUsers();
            Button1.Text = eu.DeleteUser(GridView1.SelectedRow.Cells[2].Text);
            

            
            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
           
        }
    }
}