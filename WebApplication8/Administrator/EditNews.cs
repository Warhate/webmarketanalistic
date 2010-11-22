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
            String d = DatePost.Date.ToShortDateString().Trim();
            try
            {
                conection.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = conection;
                cmd.CommandText = "SET dateformat dmy INSERT INTO News(newsname,newsbody,date) VALUES('" + NewsHead + "','" + NewsBody + "','"+DatePost.ToShortDateString()+"')";
                cmd.ExecuteNonQuery();
                return "";
            }
            catch (SqlException ex)
            {
                return ex.Message+ DatePost.ToString();

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