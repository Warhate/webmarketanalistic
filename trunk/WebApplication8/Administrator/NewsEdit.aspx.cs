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
                if (!this.IsPostBack)
                {
                    BtnAddNews.Text = "Зберегти";
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
                        LabelDate.Text = reader["date"].ToString();

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
            if(!this.IsPostBack)
            {
            LabelDate.Text = DateTime.Now.Date.ToLongDateString();
            PostedDate = DateTime.Now;

            LoadNews();
            }
            
            }
        
        


        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            LabelDate.Text = Calendar1.SelectedDate.ToLongDateString() ;
            PostedDate = Calendar1.SelectedDate;
        }

        protected void BtnAddNews_Click(object sender, EventArgs e)
        {
            isUpdate = true;
            EditNews en = new EditNews();
            if (Calendar1.SelectedDate.ToString("yyyy")=="0001")
            {
                PostedDate = DateTime.Now;


            }
            else
            {
                PostedDate = Calendar1.SelectedDate;
            }
            if (HttpContext.Current.Request.QueryString.Count == 0)
            {

                if (en.AddNews(TxtBodyNews.Text, TxtHeadNews.Text, PostedDate, CheckPosted.Checked) == "")
               {
                   TxtBodyNews.Text = "";
                   TxtHeadNews.Text = "";
                   LabelMessage.Text = "Новость добавлено!";
               }

            }
            else 
            
            {
                ID = Convert.ToString(HttpContext.Current.Request.QueryString["ID"]);
                try
                {
                    conection.Open();
                    SqlCommand cmd = new SqlCommand();
                    cmd.Connection = conection;
                    cmd.CommandText = "SET dateformat dmy UPDATE News SET newsname = '" + TxtHeadNews.Text + "', newsbody = '" + TxtBodyNews.Text + "',date ='" +PostedDate .ToShortDateString() + "' WHERE(id = '" + ID + "')";
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