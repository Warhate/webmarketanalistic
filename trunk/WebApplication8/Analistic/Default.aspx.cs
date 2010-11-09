using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace WebApplication8.Analistic
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\Warh\Documents\Visual Studio 2010\Projects\WebApplication8\WebApplication8\App_Data\webmarket.mdf;Integrated Security=True;User Instance=True");
           
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            List<String> ls = new List<String>();
            List<int> lc = new List<int>();
            Boolean IsFind = false;
            Count cnt = new Count();
            SqlDataReader reader;
            String commandRead = "SELECT * FROM Tr";
            try
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = conn;
                cmd.CommandText =commandRead;
                reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    ls.Add(reader["Made"].ToString().Trim());
                }


            }
            catch (SqlException ex)
            {
                Label1.Text = ex.Message;
            }
            finally
            {
                conn.Close();
            }
            lc.Clear();
            lc = cnt.counting(ls);
            ls.Clear();
            ls = cnt.lot;
            ListBox1.Items.Clear();


            try
            {

                conn.Open();
                List<String> lsr = new List<String>();
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = conn;
                cmd.CommandText = "SELECT * FROM Made";
                SqlDataReader sreader = cmd.ExecuteReader();
                while (sreader.Read())
                {
                    lsr.Add(sreader["name"].ToString().Trim());
                    
                }
                sreader.Close();

                for (int i = 0; i < ls.Count; i++)
                {
                    ListBox1.Items.Add(ls[i].Length.ToString());
                    for (int j = 0; j < lsr.Count; j++)
                    {
                        
                        ListBox2.Items.Add(lsr[j].Length.ToString());
                        if (ls[i]==lsr[j])
                        {
                            cmd.CommandText = "UPDATE Made SET count =" + lc[i] + " WHERE(name = '" + ls[i] + "')";
                            cmd.ExecuteNonQuery();
                            IsFind = true;


                        }
                    }
                    if (!IsFind)
                    {
                        cmd.CommandText = "INSERT INTO Made(name,count) VALUES ('" + ls[i] + "'," + lc[i] + ")";
                        cmd.ExecuteNonQuery();
                    }
                    IsFind = false;
                }
            }
            catch (SqlException err)
            {
                Label1.Text = err.Message;
            }
            finally
            {
                conn.Close();
            }

           
        }

        protected void Chart1_Load(object sender, EventArgs e)
        {
            
        }

        protected void SqlDataSource2_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlConnection conu = new SqlConnection(@"Data Source=WARH-PC\SQLEXPRESS;Initial Catalog=webmarkkk;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("SELECT * FROM aspnet_Users",conu);
            try
            {
                conu.Open();
                SqlDataReader reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    ListBox1.Items.Add(WebProfile.GetProfile(reader["UserName"].ToString()).UserName);

                }
            }
            catch (SqlException err)
            {
                Label1.Text = err.Message;
            }
            finally
            {
                conu.Close();
            }
        }
    }
}