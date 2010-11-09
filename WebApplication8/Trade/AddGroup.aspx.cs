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

            DropDownList2.Items.Clear();
            SqlConnection conection = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\Warh\Documents\Visual Studio 2010\Projects\WebApplication8\WebApplication8\App_Data\webmarket.mdf;Integrated Security=True;User Instance=True");
            SqlCommand cmd = new SqlCommand();
            try
            {
                conection.Open();
                cmd.Connection = conection;
                cmd.CommandText = "SELECT * FROM Firm INNER JOIN GroupT ON Firm.GroupID = GroupT.GroupID WHERE (GroupT.GroupID = " + DropDownList1.SelectedItem.Value + ")";
                SqlDataReader reader = cmd.ExecuteReader();
                //WHERE (GroupT.ID = " + DropDownList1.SelectedItem.Value+ "
                


                while (reader.Read())
                {
                    DropDownList2.Items.Add(reader["Name"].ToString());

                }
            }
            catch (SqlException ex )
            { 
               DropDownList2.Items.Add(ex.Message);
            
            }
            finally
            {
                conection.Close();
            
            }


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            tradeSet.InsertGroupT(TxtGroup.Text);

            

//            SELECT        Firm.Name, GroupT.Name AS Expr1    вибірка з повязаних таблиць

//FROM            Firm INNER JOIN
//                         GroupT ON Firm.GroupID = GroupT.GroupID
//WHERE        (GroupT.Name = 'Телевізори')
            
            

        }

        protected void AddBtn_Click(object sender, EventArgs e)
        {
            tradeSet.InsertFirm(TxtFirm.Text,DDListGroup.SelectedItem.Value);
        }
    }
}