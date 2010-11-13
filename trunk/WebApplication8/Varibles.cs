using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApplication8
{
    public static class Varibles
    {
        static String _conectionString = @"Data Source=WARH-PC\SQLEXPRESS;Initial Catalog=webmarkkk;Integrated Security=True";

        public static  String ConectionString
        {
            get {
                return _conectionString;
                
            }
        }
    }
}