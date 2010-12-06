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
    public partial class Default : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void LoginView1_ViewChanged(object sender, EventArgs e)
        {

        }

        protected void droplang_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        protected void droplang_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }

        protected void btnlang_Click(object sender, EventArgs e)
        {
            Response.Redirect(Request.Path);

        }

        protected override void OnInit(EventArgs e)
        {
            



            base.OnInit(e);
        }
        protected override void OnLoad(EventArgs e)
        {
            base.OnLoad(e);
        }

        protected override void OnPreRender(EventArgs e)
        {

            base.OnPreRender(e);
        }

        protected void InitializeCulture()
        {



        }

    }
}