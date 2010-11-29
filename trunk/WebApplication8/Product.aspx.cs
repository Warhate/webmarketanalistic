using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace WebApplication8
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        SqlConnection connection = new SqlConnection(Varibles.ConectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
             if (HttpContext.Current.Request.QueryString.Count != 0)
            {

              
                    ID = Convert.ToString(HttpContext.Current.Request.QueryString["ID"]);
                   
                    try
                    {
                        SqlCommand cmd = new SqlCommand();
                        cmd.Connection = connection;
                        cmd.CommandText = "SELECT * FROM Product WHERE(ProductId =" + ID + ") ";
                        connection.Open();

                        SqlDataReader reader = cmd.ExecuteReader();
                        reader.Read();
                        LabelName.Text = reader["Name"].ToString();
                        LabelInfo.Text = reader["info"].ToString();
                        LabelPrice.Text = String.Format("{0:c}",reader["Cost"]);

                        if (reader["GroupID"].ToString() == "1")
                        {
                            LabelClass.Visible = true;
                            LabelClassCaption.Visible = true;

                            LabelDiag.Visible = true;
                            LabelDiagCaption.Visible = true;

                            LabelRaz.Visible = true;
                            LabelRazCaption.Visible = true;

                            LabelMem.Visible = false;
                            LabelCam.Visible = false;
                            LabelFF.Visible = false;
                            LabelSize.Visible = false;

                            LabelCamCaption.Visible = false;
                            LabelFFCaption.Visible = false;
                            LabelMemmoryCaption.Visible = false;
                            LabelSizeCaption.Visible = false;

                            LabelClass.Text = reader["TVClass"].ToString();
                            LabelDiag.Text = reader["TVDiag"].ToString();
                            LabelRaz.Text = reader["TVRaz"].ToString();

                        
                        }
                        else if (reader["GroupID"].ToString() == "2")
                        {
                            LabelClass.Visible = false;
                            LabelClassCaption.Visible = false;

                            LabelDiag.Visible = false;
                            LabelDiagCaption.Visible = false;

                            LabelRaz.Visible = false;
                            LabelRazCaption.Visible = false;

                            LabelMem.Visible = true;
                            LabelCam.Visible = true;
                            LabelFF.Visible = true;
                            LabelSize.Visible = true;

                            LabelCamCaption.Visible = true;
                            LabelFFCaption.Visible = true;
                            LabelMemmoryCaption.Visible = true;
                            LabelSizeCaption.Visible = true;

                            LabelCam.Text = reader["PhoneCam"].ToString();
                            LabelSize.Text = reader["PhoneSize"].ToString();
                            LabelFF.Text = reader["PhoneFF"].ToString();
                            LabelMem.Text = reader["PhoneMem"].ToString();



                        }
                        else
                        {

                            LabelClass.Visible = false;
                            LabelClassCaption.Visible = false;

                            LabelDiag.Visible = false;
                            LabelDiagCaption.Visible = false;

                            LabelRaz.Visible = false;
                            LabelRazCaption.Visible = false;

                            LabelMem.Visible = false;
                            LabelCam.Visible = false;
                            LabelFF.Visible = false;
                            LabelSize.Visible = false;

                            LabelCamCaption.Visible = false;
                            LabelFFCaption.Visible = false;
                            LabelMemmoryCaption.Visible = false;
                            LabelSizeCaption.Visible = false;


                        
                        }
                        



                        Image1.ImageUrl = "~/Image.ashx?ID="+ID;
                        Button1.PostBackUrl = "~/Tray/Default.aspx?ID="+ID;
                    }
                    catch (SqlException ex)
                    {
                        LabelName.Text = ex.Message;

                    }
                    catch (Exception err)
                    {

                        LabelName.Text = err.Message;

                    }
                    finally
                    {

                        connection.Close();


                    }

                }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }
    }
}