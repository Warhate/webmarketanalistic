using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace WebApplication8.Trade
{
    /// <summary>
    /// Сводное описание для Image
    /// </summary>
    public class Image : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            SqlConnection conn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\Warh\Documents\Visual Studio 2010\Projects\WebApplication8\WebApplication8\App_Data\webmarket.mdf;Integrated Security=True;User Instance=True");

            try
            {
                String TrName = Convert.ToString(context.Request.QueryString["TrName"]);
                SqlCommand cmd = new SqlCommand("SELECT Image FROM Product WHERE Name =@Name", conn);
                cmd.Parameters.Add("@Name", System.Data.SqlDbType.NChar).Value = TrName;
                conn.Open();
                context.Response.ContentType = "image/png";
                context.Response.BinaryWrite((byte[])cmd.ExecuteScalar());
            }
            catch (Exception)
            { }
            finally
            {
                conn.Close();
            }

        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}