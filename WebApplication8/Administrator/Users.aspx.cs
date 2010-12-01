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
            btnEditRole.PostBackUrl = "~/Administrator/UsersRole.aspx?User="+GridViewUsers.SelectedRow.Cells[1].Text;
            BtnProfile.PostBackUrl = "~/Administrator/UserProfile.aspx?User=" + GridViewUsers.SelectedRow.Cells[1].Text;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            EditUsers eu = new EditUsers();
            eu.DeleteUser(GridViewUsers.SelectedRow.Cells[2].Text);
            GridViewUsers.DataBind();

            
            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
           
        }

        protected void Button2_Click1(object sender, EventArgs e)
        {
            
        }
    }
}