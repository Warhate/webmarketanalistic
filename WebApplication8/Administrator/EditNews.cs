using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace WebApplication8.Administrator
{
    public class EditNews
    {
        SqlConnection conection = new SqlConnection(Varibles.ConectionString);

        public String AddNews(String NewsBody, String NewsHead, DateTime DatePost, bool IsPosted)
        {
            try
            {
                conection.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = conection;
                cmd.CommandText = "INSERT INTO News(newsname,newsbody,date) VALUES('"+NewsHead+"','"+NewsBody+"','"+DatePost+"')";
                cmd.ExecuteNonQuery();
                return "Ok";
            }
            catch (SqlException ex)
            {
                return ex.Message;

            }
            finally
            {
                conection.Close();
            }

            
        
        }

        public String Edit(String NewsBody, String NewsHead, DateTime DatePost, bool IsPosted, int id)
        {
            try
            {
                conection.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = conection;
                cmd.CommandText = "UPDATE News SET newsname = N'" + NewsHead + "', newsbody = '" + NewsBody + "',date ='" + DatePost + "' WHERE (id = "+ id+")";
                cmd.ExecuteNonQuery();
                return NewsHead+NewsBody+id;
            }
            catch (SqlException ex)
            {
                return ex.Message;

            }
            finally
            {
                conection.Close();
            }
        
        }

    }
}