using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace WebApplication8.Trade
{
    public class TradeSet
    {
        SqlConnection conection = new SqlConnection(Varibles.ConectionString);

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