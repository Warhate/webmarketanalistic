using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication8.Analistic
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (this.IsPostBack)
            {

                SetVisible();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        private void SetVisible()
        { 
            if(CBAge.Checked)
            {
                LabelAge.Visible = true;
                GridViewAge.Visible = true;
                ButtonAge.Visible = true;
                
            
            }

            else
            {
                LabelAge.Visible = false;
                GridViewAge.Visible = false;
                ButtonAge.Visible = false;
            
            }

            if (CBCity.Checked)
            {
                GridViewCity.Visible = true;
                ButtonCity.Visible = true;


            }

            else
            {
                GridViewCity.Visible = false;
                ButtonCity.Visible = false;

            }

            if (CBCountry.Checked)
            {
                GridViewCountry.Visible = true;
                ButtonCountry.Visible = true;


            }

            else
            {
                GridViewCountry.Visible = false;
                ButtonCountry.Visible = false;

            }


            if (CBProfession.Checked)
            {
                LabelProffesion.Visible = true;
                GridViewProfession.Visible = true;
                ButtonProffesion.Visible = true;


            }

            else
            {
                LabelProffesion.Visible = false;
                GridViewProfession.Visible = false;
                ButtonProffesion.Visible = false;
            }

            if (CBSex.Checked)
            {
                LabelSex.Visible = true;
                GreedViewSex.Visible = true;
                ChartSex.Visible = true;
                ButtonSex.Visible = true;


            }

            else
            {
                LabelSex.Visible = false;
                GreedViewSex.Visible = false;
                ChartSex.Visible = false;
                ButtonSex.Visible = false;
            }

            if (!CBCity.Checked && !CBCountry.Checked)
            {
                LabelCountry.Visible = false;

            }

            else
            {

                LabelCountry.Visible = true;
            }
        
        
        }

        /// <summary>
        /// Экспорт статистики до ексель файла
        /// </summary>
        /// <param name="dg">Эеспортируемая гридвайв</param>
        public void ExportExel(GridView dg)
        {

            System.IO.StringWriter sw = new System.IO.StringWriter();
            HtmlTextWriter tw = new HtmlTextWriter(sw);
            dg.DataBind();
            dg.RenderControl(tw);
            Response.Clear();
            Response.AddHeader("Content-Disposition", "attachment; filename=StatisticUsers.xls");
            Response.ContentEncoding = System.Text.Encoding.Default;
            Response.Charset = "";
            Response.ContentType = "application/vnd.ms-excel";

            Response.Write(sw.ToString());

            Response.Flush();
            Response.End();

        }

        public override void VerifyRenderingInServerForm(Control control)
        {
            //Оставить пустым
        }

        protected void ButtonSex_Click(object sender, EventArgs e)
        {
            ExportExel(GreedViewSex);
        }

        protected void ButtonAge_Click(object sender, EventArgs e)
        {
            ExportExel(GridViewAge);
        }

        protected void ButtonProffesion_Click(object sender, EventArgs e)
        {
            ExportExel(GridViewProfession);
        }

        protected void ButtonCountry_Click(object sender, EventArgs e)
        {
            ExportExel(GridViewCountry);
        }

        protected void ButtonCity_Click(object sender, EventArgs e)
        {
            ExportExel(GridViewCity);
        }
    }
}