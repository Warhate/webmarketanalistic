using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace WebApplication8.Trade
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        TradeSet tradeSet = new TradeSet();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            tradeSet.InsertGroupT(TxtGroup.Text);
          

        }

        protected void AddBtn_Click(object sender, EventArgs e)
        {
            tradeSet.InsertFirm(TxtFirm.Text,DDListGroup.SelectedItem.Value);
        }
    }
}