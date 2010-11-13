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
            SqlConnection conn = new SqlConnection(Varibles.ConectionString);

            try
            {
                String id = Convert.ToString(context.Request.QueryString["ID"]);
                SqlCommand cmd = new SqlCommand("SELECT Image FROM Product WHERE ProductId =@id", conn);
                cmd.Parameters.Add("@id", System.Data.SqlDbType.NChar).Value = id;
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