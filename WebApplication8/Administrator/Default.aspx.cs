using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace WebApplication8.Administrator
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        protected void ListBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            BtnProfile.PostBackUrl = "~/Administrator/UserProfile.aspx?User="+ ListBox1.SelectedItem.Text;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                Varibles.Connection.Open();
                SqlCommand cmd = new SqlCommand("UPDATE Tray  SET IsBuy = 2 WHERE (UserName = '" + ListBox1.SelectedItem.Text + "') AND (IsBuy =1)", Varibles.Connection);
                cmd.ExecuteNonQuery();


                GridView1.DataBind();
            }
            catch (SqlException ex)
            {

            }
            finally
            {
                Varibles.Connection.Close();

            }
        }
    }
}