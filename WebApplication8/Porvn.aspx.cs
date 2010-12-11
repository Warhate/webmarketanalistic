using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication8
{
    public partial class WebForm12 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                String gid = Convert.ToString(Request.QueryString["GID"]);

                if (gid == "1")
                {
                    for (int i = 6; i <= 9; i++)
                    {
                        DetailsView1.Fields[i].Visible = false;
                        DetailsView2.Fields[i].Visible = false;

                    }

                    for (int i = 3; i <= 5; i++)
                    {
                        DetailsView1.Fields[i].Visible = true;
                        DetailsView2.Fields[i].Visible = true;

                    }


                }
                else
                    if (gid == "2")
                    {
                        for (int i = 5; i <= 8; i++)
                        {
                            DetailsView1.Fields[i].Visible = true;
                            DetailsView2.Fields[i].Visible = true;

                        }

                        for (int i = 2; i <= 4; i++)
                        {
                            DetailsView1.Fields[i].Visible = false;
                            DetailsView2.Fields[i].Visible = false;

                        }

                    }
                    else
                    {
                        for (int i = 2; i <= 8; i++)
                        {
                            DetailsView1.Fields[i].Visible = false;
                            DetailsView2.Fields[i].Visible = false;

                        }

                    }






            }


        }
    }
}