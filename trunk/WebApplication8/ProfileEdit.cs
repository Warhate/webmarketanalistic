using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace WebApplication8
{
    public class ProfileEdit
    {


        public String ProfileAdd() //Додавання профілю користувача до таблиці статистики ,'" + UserId + "' , UserId
        {

            String UserId = GetUserId(WebProfile.Current.UserName);


            try
            {
                Varibles.Connection.Open();

                SqlCommand cmd = new SqlCommand();
                cmd.Connection = Varibles.Connection;
                cmd.CommandText = "INSERT INTO Users(Age, Profession, Sex, Country, City, Ind,Street, Room, Dom, Rayon, Oblast, FirstName, MidleName, LastName,UserId) VALUES( "+ WebProfile.Current.Age + ", '" + WebProfile.Current.Profession + "','" + WebProfile.Current.Sex + "','" + WebProfile.Current.Country + "', '" + WebProfile.Current.City + "'," + WebProfile.Current.Index + ",'" + WebProfile.Current.Street + "', '" + WebProfile.Current.Room + "','" + WebProfile.Current.Dom + "','" + WebProfile.Current.Rayon + "','" + WebProfile.Current.Obl + "','" + WebProfile.Current.FirstName + "','" + WebProfile.Current.MidleName + "','" + WebProfile.Current.LastName + "','"+UserId+"')";
                cmd.ExecuteNonQuery();
                return "";

            }
            catch (SqlException ex)
            {
                return ex.Message + UserId;
            
            }
            finally
            {
                Varibles.Connection.Close();
            
            }


        }

        public String ProfileUpdate()
        {
            String UserId = GetUserId(WebProfile.Current.UserName);
            try
            {
                Varibles.Connection.Open();

                SqlCommand cmd = new SqlCommand();
                cmd.Connection = Varibles.Connection;
                cmd.CommandText = "UPDATE Users SET Age = " + WebProfile.Current.Age + ", Sex = '" + WebProfile.Current.Sex + "', Profession = '" + WebProfile.Current.Profession + "', Country = '" + WebProfile.Current.Country + "', Ind = '" + WebProfile.Current.Index + "', City = '" + WebProfile.Current.City + "', Street = '" + WebProfile.Current.Street + "', Rayon = '" + WebProfile.Current.Rayon + "', Oblast = '" + WebProfile.Current.Obl + "', Room = '" + WebProfile.Current.Room + "', Dom = '" + WebProfile.Current.Dom + "', FirstName = '" + WebProfile.Current.FirstName + "', MidleName = '" + WebProfile.Current.MidleName + "', LastName = '" + WebProfile.Current.LastName + "' WHERE (UserId = '" + UserId + "')";
                cmd.ExecuteNonQuery();
                return "";
            }
            catch (SqlException ex)
            {
                return ex.Message;
            
            }
            finally
            {
                Varibles.Connection.Close();

            
            }
        
        }

        

        

        private String GetUserId(String UserName) // функція повертає унікальний ідентифікатор користувача, який відповідає його логіну
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
              //  error = ex.Message;
                return "";

            }
            finally
            {
                Varibles.Connection.Close();

            }

        }



    }
}