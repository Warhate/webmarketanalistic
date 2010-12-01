using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace WebApplication8.Administrator
{
    public partial class WebForm8 : System.Web.UI.Page
    {
        String UserName;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!this.IsPostBack)
            {
            if (HttpContext.Current.Request.QueryString.Count != 0)
            {


                UserName = Convert.ToString(HttpContext.Current.Request.QueryString["User"]);
                LabelUserName.Text = UserName;

                String UserId = GetUserId(UserName);
                try
                {
                    Varibles.Connection.Open();
                    SqlCommand cmd = new SqlCommand();
                    cmd.Connection = Varibles.Connection;
                    cmd.CommandText = "SELECT * FROM aspnet_UsersInRoles WHERE(UserId = '" + UserId + "')";
                    SqlDataReader reader = cmd.ExecuteReader();

                    while (reader.Read())
                    {
                        if (reader["RoleId"].ToString().Trim() == "eb26ab6d-c14a-4566-9465-02d3de2ac0e7")
                        {

                            CheckBoxAdm.Checked =CheckBoxA.Checked= true;

                        }

                        if (reader["RoleId"].ToString().Trim() == "977f34ff-a8d9-4eaa-a69b-2f7cfb6d1322")
                        {

                            CheckBoxStat.Checked =CheckBoxS.Checked= true;


                        }

                        if (reader["RoleId"].ToString().Trim() == "8055d395-90d3-4877-a8d0-8aaa1c01f2a2")
                        {

                            CheckBoxTrader.Checked =CheckBoxT.Checked= true;

                        }
                    
                    }





                }

                catch (SqlException ex)
                {
                    LabelUserName.Text = ex.Message;
                }
                finally
                {
                    Varibles.Connection.Close();
                }



            }

            }



        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String UserId = GetUserId(LabelUserName.Text);
            try
            {
                Varibles.Connection.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = Varibles.Connection;

                if (CheckBoxAdm.Checked & !CheckBoxA.Checked)
                {
                    cmd.CommandText = "INSERT INTO aspnet_UsersInRoles (UserId,RoleId) VALUES('" + UserId + "','eb26ab6d-c14a-4566-9465-02d3de2ac0e7')";
                    cmd.ExecuteNonQuery();


                }

                if (!CheckBoxAdm.Checked && CheckBoxA.Checked)
                {
                    cmd.CommandText = "DELETE FROM aspnet_UsersInRoles WHERE (UserId ='" + UserId + "' ) AND (RoleId = 'eb26ab6d-c14a-4566-9465-02d3de2ac0e7')";
                    cmd.ExecuteNonQuery();


                }


                if (CheckBoxStat.Checked && !CheckBoxS.Checked)
                {
                    cmd.CommandText = "INSERT INTO aspnet_UsersInRoles (UserId,RoleId) VALUES('" + UserId + "','977f34ff-a8d9-4eaa-a69b-2f7cfb6d1322')";
                    cmd.ExecuteNonQuery();


                }

                if (!CheckBoxStat.Checked && CheckBoxS.Checked)
                {
                    cmd.CommandText = "DELETE FROM aspnet_UsersInRoles WHERE (UserId ='" + UserId + "' ) AND (RoleId = '977f34ff-a8d9-4eaa-a69b-2f7cfb6d1322')";
                    cmd.ExecuteNonQuery();


                }


                if (CheckBoxTrader.Checked && !CheckBoxT.Checked)
                {
                    cmd.CommandText = "INSERT INTO aspnet_UsersInRoles (UserId,RoleId) VALUES('" + UserId + "','8055d395-90d3-4877-a8d0-8aaa1c01f2a2')";
                    cmd.ExecuteNonQuery();


                }

                if (!CheckBoxTrader.Checked && CheckBoxT.Checked)
                {
                    cmd.CommandText = "DELETE FROM aspnet_UsersInRoles WHERE (UserId ='" + UserId + "' ) AND (RoleId = '8055d395-90d3-4877-a8d0-8aaa1c01f2a2')";
                    cmd.ExecuteNonQuery();


                }

            }

            catch (SqlException ex)
            {
                LabelUserName.Text = ex.Message;
            }
            finally
            {
                Varibles.Connection.Close();
            }

        }

        private String GetUserId(String UserName)
        {
            
            try
            {
                Varibles.Connection.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = Varibles.Connection;
                cmd.CommandText = "SELECT * FROM aspnet_Users WHERE(UserName = '" + UserName + "')";
                SqlDataReader reader = cmd.ExecuteReader();
                reader.Read();
                String s = reader["UserId"].ToString();

                return s;

            }

            catch (SqlException ex)
            {
                return String.Empty;

            }
            finally
            {
                Varibles.Connection.Close();
            }

        }
    }
}