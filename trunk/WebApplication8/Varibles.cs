using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApplication8
{
    public static class Varibles
    {
         static String _conectionString = @"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\Warh\Documents\Visual Studio 2010\Projects\WebApplication8\WebApplication8\App_Data\webmarket.mdf;Integrated Security=True;User Instance=True";

        public static  String ConectionString
        {
            get {
                return _conectionString;
                
            }
        }
    }
}