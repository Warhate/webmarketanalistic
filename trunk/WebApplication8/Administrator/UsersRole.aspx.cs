using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace WebApplication8.Administrator
{
    public partial class WebForm8 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {


        }

        private String GetUserId(String UserName)
        {
            
            try
            {
                Varibles.Connection.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = Varibles.Connection;
                cmd.CommandText = "SELECT * FROM aspnet_Users WHERE(UserName = '" + UserName + "')";
                SqlDataReader reader = cmd.ExecuteReader();
                reader.Read();
                String s = reader["UserId"].ToString();

                return s;

            }

            catch (SqlException ex)
            {
                return String.Empty;

            }
            finally
            {
                Varibles.Connection.Close();
            }

        }
    }
}