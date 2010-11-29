using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace WebApplication8.Tray
{
    public class AddTray
    {
        SqlConnection connection = new SqlConnection(Varibles.ConectionString);
        String error;
        public String AddToTray(int id)
        {
            String UserId = GetUserId(WebProfile.Current.UserName);
            try
            {
                connection.Open();
                SqlCommand cmd = new SqlCommand("INSERT INTO Tray(ProductId, UserName) VALUES ("+id+",'"+WebProfile.Current.UserName+"') ", connection);
                cmd.ExecuteNonQuery();

                return error;

            }
            catch (SqlException ex)
            {
                error = ex.Message;
                return error;
            
            }
            finally
            {
                connection.Close();
            
            }
        
        }

        //public SqlDataReader GetProduct(int id)
        //{
        //    try
        //    {
        //        connection.Open();
        //        SqlCommand cmd = new SqlCommand("SELECT * FROM Product WHERE (ProductId = "+id+")", connection);
        //        SqlDataReader reader = cmd.ExecuteReader();
        //        return reader;
        //    }
        //    catch (SqlException ex)
        //    {
        //        error = ex.Message;
        //        return null;
        //    }
        //    finally
        //    {
        //        connection.Close();
        //    }
        
        //}

        /// <summary>
        /// Возвращает индефикатор юзера
        /// </summary>
        /// <param name="UserName">Имя пользователя</param>
        /// <returns>Идентификатор пользователя</returns>
        private String GetUserId(String UserName)
        {

            try
            {
                connection.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = connection;
                cmd.CommandText = "SELECT * FROM aspnet_Users WHERE(UserName = '"+UserName+"')";
                SqlDataReader reader = cmd.ExecuteReader();
                reader.Read();
                String s = reader["UserId"].ToString();

                return s;

            }

            catch (SqlException ex)
            {
                error = ex.Message;
                return "";

            }
            finally
            {
                connection.Close();
            
            }

        }

        public String Buy()
        {
            try
            {
                connection.Open();
                SqlCommand cmd = new SqlCommand("UPDATE Tray  SET IsBuy = 1 WHERE (UserName = '" + WebProfile.Current.UserName + "') AND (IsBuy IS NULL)", connection);
                cmd.ExecuteNonQuery();

                return "";

            }
            catch (SqlException ex)
            {
                error = ex.Message;
                return error;
            }
            finally
            {
                connection.Close();

            }
        
        
        }

        public void Del(String id)
        {
            try
            {
                connection.Open();
                SqlCommand cmd = new SqlCommand("UPDATE Tray  SET IsBuy = 1 WHERE (UserName = '" + WebProfile.Current.UserName + "') AND (IsBuy IS NULL)", connection);
                cmd.ExecuteNonQuery();


            }
            catch (SqlException ex)
            {
                error = ex.Message;
            }
            finally
            {
                connection.Close();

            }
        
        
        }
    }
}