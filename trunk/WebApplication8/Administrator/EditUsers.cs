using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace WebApplication8.Administrator
{
    public class EditUsers
    {
        public String DeleteUser(String userId)
        {
            SqlConnection conn = new SqlConnection(@"Data Source=WARH-PC\SQLEXPRESS;Initial Catalog=webmarkkk;Integrated Security=True");
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = conn;


            try
            {
                conn.Open();
                cmd.CommandText = "DELETE FROM aspnet_Profile WHERE (UserId ='"+userId+"' )";
                cmd.ExecuteNonQuery();
                cmd.CommandText = "DELETE FROM aspnet_Membership WHERE (UserId ='" + userId + "')";
                cmd.ExecuteNonQuery();
                cmd.CommandText = "DELETE FROM aspnet_Users WHERE (UserId ='" + userId + "')";
                cmd.ExecuteNonQuery();
                cmd.CommandText = "DELETE FROM aspnet_UsersInRoles WHERE (UserId ='" + userId + "')";
                cmd.ExecuteNonQuery();






                return "User del";
            }
            catch (SqlException ex)
            {
                return userId;

            }
            catch (Exception exe)
            {
                return exe.Message + userId;
            
            }
            finally
            {
                conn.Close();
            }
            
        }

    }
}