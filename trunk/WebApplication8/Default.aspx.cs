using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Threading;
using System.Globalization;

namespace WebApplication8
{
    public partial class WebForm2 :MarketPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
            
        }

        public String sss()
        { 
            
            String s=WebProfile.Properties.ToString();
            return s;
        }



        
    }
}