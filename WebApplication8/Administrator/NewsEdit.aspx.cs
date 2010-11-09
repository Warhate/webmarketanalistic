using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace WebApplication8.Administrator
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        DateTime PostedDate;
        bool isEdit, isUpdate;
        String ID;
        SqlConnection conection = new SqlConnection(Varibles.ConectionString);

        private void LoadNews()
        {
            if (HttpContext.Current.Request.QueryString.Count == 0)
            {

                BtnAddNews.Text = "Додати";
                isEdit = false;

            }
            else
            {
                if (!isUpdate)
                {
                    BtnAddNews.Text += "Save";
                    isEdit = true;
                    ID = Convert.ToString(HttpContext.Current.Request.QueryString["ID"]);
                   
                    try
                    {
                        SqlCommand cmd = new SqlCommand();
                        cmd.Connection = conection;
                        cmd.CommandText = "SELECT * FROM News WHERE(id =" + ID + ") ";
                        conection.Open();

                        SqlDataReader reader = cmd.ExecuteReader();
                        reader.Read();
                        TxtBodyNews.Text = reader["newsbody"].ToString();
                        TxtHeadNews.Text = reader["newsname"].ToString();

                    }
                    catch (SqlException ex)
                    {
                        TxtHeadNews.Text = ex.Message;

                    }
                    catch (Exception err)
                    {

                        TxtBodyNews.Text = err.Message;

                    }
                    finally
                    {

                        conection.Close();


                    }

                }



            }
        
        }

        

        protected void Page_Load(object sender, EventArgs e)
        {
            LabelDate.Text = DateTime.Now.Date.ToLongDateString();
            PostedDate = DateTime.Now;

            LoadNews();
            
            }
        
        


        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            LabelDate.Text = Calendar1.SelectedDate.Date.ToLongDateString();
            PostedDate = Calendar1.SelectedDate.Date;
        }

        protected void BtnAddNews_Click(object sender, EventArgs e)
        {
            isUpdate = true;
            EditNews en = new EditNews();
            if (!isEdit)
            {
                
                TxtBodyNews.Text = en.AddNews(TxtBodyNews.Text, TxtHeadNews.Text, PostedDate.ToUniversalTime(), CheckPosted.Checked);
                TxtHeadNews.Text = PostedDate.ToString();
            }
            else 
            
            {
                //TxtBodyNews.Text = en.Edit(TxtBodyNews.Text, TxtHeadNews.Text, PostedDate.ToUniversalTime(), CheckPosted.Checked,Convert.ToInt32(ID));
                try
                {
                    conection.Open();
                    SqlCommand cmd = new SqlCommand();
                    cmd.Connection = conection;
                    cmd.CommandText = "UPDATE News SET newsname = N'" + TxtHeadNews.Text + "', newsbody = '" + TxtBodyNews.Text + "',date ='" + PostedDate + "' WHERE (id = " + ID + ")";
                    cmd.ExecuteNonQuery();

                }
                catch (SqlException ex)
                {
                    TxtHeadNews.Text = ex.Message;

                }
                finally
                {
                    conection.Close();
                }
            }
        }
    }
}