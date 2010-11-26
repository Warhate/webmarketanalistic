using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace WebApplication8
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        SqlConnection connection = new SqlConnection(Varibles.ConectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
             if (HttpContext.Current.Request.QueryString.Count != 0)
            {

              
                    ID = Convert.ToString(HttpContext.Current.Request.QueryString["ID"]);
                   
                    try
                    {
                        SqlCommand cmd = new SqlCommand();
                        cmd.Connection = connection;
                        cmd.CommandText = "SELECT * FROM Product WHERE(ProductId =" + ID + ") ";
                        connection.Open();

                        SqlDataReader reader = cmd.ExecuteReader();
                        reader.Read();
                        LabelName.Text = reader["Name"].ToString();
                        LabelInfo.Text = reader["info"].ToString();
                        LabelPrice.Text = String.Format("{0:c}",reader["Cost"]);
                        Image1.ImageUrl = "~/Image.ashx?ID="+ID;
                        Button1.PostBackUrl = "~/Tray/Default.aspx?ID="+ID;
                    }
                    catch (SqlException ex)
                    {
                        LabelName.Text = ex.Message;

                    }
                    catch (Exception err)
                    {

                        LabelName.Text = err.Message;

                    }
                    finally
                    {

                        connection.Close();


                    }

                }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }
    }
}