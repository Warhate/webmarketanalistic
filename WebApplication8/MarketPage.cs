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
    public class MarketPage:Page
    {

        protected override void InitializeCulture()
        {

            if (Session["Culture"].ToString() == null)
            {
                Thread.CurrentThread.CurrentUICulture = new CultureInfo("ru");

            }
            else
            {

                Thread.CurrentThread.CurrentUICulture = new CultureInfo(Session["Lang"].ToString());
            }
           
        }

    }
}