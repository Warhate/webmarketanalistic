using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication8
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                RadioButtonList1.SelectedIndex = 0;
            }
            }

        public void SetParam(SqlDataSource SDS, String paramName, params Object[] paramValues)
        {
            string[] paramNames = new string[paramValues.Length];
            for (int i = 0; i < paramValues.Length; i++)
            {
                paramNames[i] = string.Format("{0}_{1}", paramName, i);
                SDS.SelectParameters.Add(paramNames[i], paramValues[i].ToString());
            }
            SDS.SelectCommand = SDS.SelectCommand.Replace(paramName, string.Join(",", paramNames));
        
        
        }


        public String SplitString(String s)
        {
            if (s.Length > 200)
            {
                return s.Substring(0,199);
            }
            else 
            {
                return s;
            }

            
        
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            
            // 
            //int[] values = new int[CheckBoxList2.Items.Count];
            
            //for (int i = 0; i < CheckBoxList2.Items.Count; i++)
            //{

            //    //values[i] = Convert.ToInt32(CheckBoxList2.SelectedValue[i]);
            //    if (CheckBoxList2.Items[i].Selected)
            //    {
                    

            //    }

            //    Label2.Text = values.Length.ToString();
            //}



            //    SetParam(SqlDataSource1, "@FirmID", values);
            //SqlDataSource1.DataBind();
            //ListView1.DataBind();

            //SqlDataSource1.SelectCommand = "SELECT [ProductID], [Name], [Image], [Cost] FROM [Product] WHERE ([GroupID] = @GroupID) AND ([FirmID]= '" + TxtFirm.Text + "')";
            //SqlDataSource1.DataBind();
            //ListView1.DataBind();





            //Label1.Text = SqlDataSource1.SelectCommand;
        

        }

        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }




    }
}