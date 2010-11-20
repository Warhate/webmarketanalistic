using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace WebApplication8
{
    public static class Varibles
    {
        private static String _conectionString = @"Data Source=WARH-PC\SQLEXPRESS;Initial Catalog=webmarkkk;Integrated Security=True";
         private  static SqlConnection _connection = new SqlConnection(_conectionString);


         public static SqlConnection Connection
         {
             get {

                 return _connection;
             }
         
         }



        public static  String ConectionString
        {
            get {
                return _conectionString;
                
            }
        }
    }
}