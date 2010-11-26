using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Profile;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace WebApplication8.Trade
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection conection = new SqlConnection(Varibles.ConectionString);
        SqlDataSource firmSource = new SqlDataSource();
        ProfileBase pb = new ProfileBase();
        ProfileInfoCollection pic = new ProfileInfoCollection();
        
        
        protected void Page_Load(object sender, EventArgs e)
        {

            this.Title = "Добавление товара";
            //if (this.IsPostBack)
            //{
            //    SetVisible();
            //}
            
        }




        private void SetVisible()
        {
            if (DDListGroup.SelectedValue == "1")
            {
                LabelTVClass.Visible = true;
                LabelTVDiag.Visible = true;
                LabelTvRoz.Visible = true;
                TextBoxTVClass.Visible = true;
                TextBoxTVDiag.Visible = true;
                TextBoxTVRaz.Visible = true;


            }
            else
            {
                LabelTVClass.Visible = false;
                LabelTVDiag.Visible = false;
                LabelTvRoz.Visible = false;
                TextBoxTVClass.Visible = false;
                TextBoxTVDiag.Visible = false;
                TextBoxTVRaz.Visible = false;
            
            }

            if (DDListGroup.SelectedValue == "2")
            {
                LabelPhneMemory.Visible = true;
                LabelPhoneCamera.Visible = true;
                LabelPhoneFF.Visible = true;
                LabelPhoneSize.Visible = true;
                TextBoxPhoneCam.Visible = true;
                TextBoxPhoneFF.Visible = true;
                TextBoxPhoneMemmory.Visible = true;
                TextBoxPhoneSize.Visible = true;


            }
            else
            {
                LabelPhneMemory.Visible = false;
                LabelPhoneCamera.Visible = false;
                LabelPhoneFF.Visible = false;
                LabelPhoneSize.Visible = false;
                TextBoxPhoneCam.Visible = false;
                TextBoxPhoneFF.Visible = false;
                TextBoxPhoneMemmory.Visible = false;
                TextBoxPhoneSize.Visible = false;

            }


        }

        public String GetFirstName()
        {
            if (WebProfile.GetProfile("Rakot").FirstName == "")
            {
                return "Null";
            }
            else
            {
                return WebProfile.Properties.ToString();
            }
            
        
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           
            //if (FileUpload1.PostedFile.InputStream.Length == 0)
            //{
            //    Image1.ImageUrl = "no_entry.png";
            //}
            //else
            //{
            //    Image1.ImageUrl = "Image.ashx?TrName=" + TxtName.Text; // посилання на зображення вибраного товару
            //}
            //LabelName.Text = TxtName.Text;

            //LabelPrice.Text = TxtPrice.Text;
            //Info.Text = TxtInfo.Text;
            //TxtName.Text = "";
            //TxtPrice.Text = "";
            //TxtInfo.Text = "";
            
            //TablePreView.Visible = true;
            //LabelMessage.Visible = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {



            

           
        }

        protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
        {
            LabelMessage.Visible = false;
            //додавання товару до бази даних
            try
            {
                conection.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = conection;
                byte[] ms = new byte[FileUpload1.PostedFile.InputStream.Length]; // створення змінної для зображення
                FileUpload1.PostedFile.InputStream.Read(ms, 0, ms.Length); //запис зображення до змінної

                cmd.CommandText = "INSERT INTO Product (name,cost,info,firmID,image,GroupID, TVDiag, TVClass, TvRaz,PhoneFF,PhoneSize,PhoneCam, PhoneMem) VALUES ('" + TxtName.Text + "','" + TxtPrice.Text + "','" + TxtInfo.Text + "'," + DDListFirm.SelectedValue + ",@file," + DDListGroup.SelectedValue + ",'" + TextBoxTVDiag.Text + "','" + TextBoxTVClass.Text + "','" + TextBoxTVRaz.Text + "','" + TextBoxPhoneFF.Text + "','" + TextBoxPhoneSize.Text + "','" + TextBoxPhoneCam.Text + "','" + TextBoxPhoneMemmory.Text + "')";
                cmd.Parameters.AddWithValue("@file", ms);
                cmd.ExecuteNonQuery();
                LabelMessage.Visible = true;
                LabelMessage.Text = "Товар " + TxtName.Text + "було додано успішно.";

            }
            catch (SqlException err)
            {
                TxtInfo.Text = err.Message;
            }
            finally
            {
                conection.Close();

            }

         
            TxtInfo.Text = "";
            TxtInStock.Text = "";
            TxtName.Text = "";
            TxtPrice.Text = "";
            TextBoxPhoneCam.Text = "";
            TextBoxPhoneFF.Text = "";
            TextBoxPhoneMemmory.Text = "";
            TextBoxPhoneSize.Text = "";
            TextBoxTVClass.Text = "";
            TextBoxTVDiag.Text = "";
            TextBoxTVRaz.Text = "";

        }

        protected void DDListGroup_SelectedIndexChanged(object sender, EventArgs e)
        {
            SetVisible();
        }
    }
}