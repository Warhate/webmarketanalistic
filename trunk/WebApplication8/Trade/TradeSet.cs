using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace WebApplication8.Trade
{
    public class TradeSet
    {
        SqlConnection conection = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\Warh\Documents\Visual Studio 2010\Projects\WebApplication8\WebApplication8\App_Data\webmarket.mdf;Integrated Security=True;User Instance=True");

        public void InsertGroupT(String GroupName)
        {
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = conection;
            cmd.CommandText = "INSERT INTO GroupT(name) VALUES ('"+GroupName+"')";

            try
            {
                conection.Open();
                cmd.ExecuteNonQuery();

            }
            catch (SqlException)
            {


            }

            finally
            {
                conection.Close();
            }
        
        }

        public void InsertFirm(String FirmName, String GroupId)
        {
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = conection;
            cmd.CommandText = "INSERT INTO Firm(name,GroupId) VALUES ('" + FirmName + "',"+GroupId+")";

            try
            {
                conection.Open();
                cmd.ExecuteNonQuery();

            }
            catch (SqlException)
            {


            }

            finally
            {
                conection.Close();
            }

        }

        



    }
}