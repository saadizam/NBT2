using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WEB
{
    public partial class Signup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;

        }

        protected void ButtonRegister_Click(object sender, EventArgs e)
        {
            


            if (Page.IsValid)
            {
                string CS = ConfigurationManager.ConnectionStrings["BuzybeezWebConnectionString"].ConnectionString;
                using (SqlConnection con = new SqlConnection(CS))
                {
                    SqlCommand cmd = new SqlCommand("spRegistrationUser", con);
                    cmd.CommandType = CommandType.StoredProcedure;
                    string EncryptedPassword = FormsAuthentication.HashPasswordForStoringInConfigFile(txtPassword.Text, "SHA1");
                    string EncryptedPasswordconfirmation = FormsAuthentication.HashPasswordForStoringInConfigFile(txtConfirmPassword.Text, "SHA1");
                    SqlParameter Username = new SqlParameter("@Username", txtusername.Text);
                    SqlParameter Email = new SqlParameter("Email", txtEmailID.Text);
                    SqlParameter Password = new SqlParameter("@Password", EncryptedPassword);
                    SqlParameter Confirmation = new SqlParameter("@Confirmation", EncryptedPasswordconfirmation);



                    cmd.Parameters.Add(Username);
                    cmd.Parameters.Add(Email);
                    cmd.Parameters.Add(Password);
                    cmd.Parameters.Add(Confirmation);

                    con.Open();
                    int RETURNCODE = (int)cmd.ExecuteScalar();
                    if (RETURNCODE == -1)
                    {
                        Label1.Text = "Username already exist";
                    }
                    else
                    {
                        Response.Redirect("Home.aspx");
                    }
                }
            }
    }




}

        
            }




            //SqlConnection con = new SqlConnection(" Data Source=DSVR019716\\SHAHZEB;Initial Catalog=Buzybeez;Integrated Security=True");
            //{
            //    //SqlCommand cmd = new SqlCommand("Insert into account(Username, Email, Password, Confirmation) Values('shahzlalani', 'shah@gmail.com', '123', '123')", con);
            //   SqlCommand cmd = new SqlCommand("Insert into account  ( Username ,Email , Password , Confirmation ) Values ('" + TextBox1.Text + "', '" + TextBox2.Text + "', '" + TextBox3.Text + "', '" + TextBox4.Text + "')", con);
            //   // SqlCommand cmd = new SqlCommand("Insert into account  (Name , Username ,Email , Password , Address , Phonenumber  ) Values ('" + TextBox1.Text + "', '" + TextBox2.Text + "', '" + TextBox3.Text + "', '" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "')", con);
            //    con.Open();
            //    cmd.ExecuteNonQuery();
            //    GridView1.DataBind();

            //    con.Close();

            //    if (Page.IsPostBack)
            //    {
            //        TextBox1.Text = "";
            //        TextBox2.Text = "";
            //        TextBox3.Text = "";
            //        TextBox4.Text = "";
            //    }


            //}
        

      
    


