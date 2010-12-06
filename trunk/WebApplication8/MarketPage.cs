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
            String s = Request["droplang"];
            if (s != null)
            {
                Thread.CurrentThread.CurrentUICulture = new CultureInfo(s);
            }
            {
                Thread.CurrentThread.CurrentUICulture = new CultureInfo("ru");
            }
        }



    }
}