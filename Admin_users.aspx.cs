using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WEB
{
    public partial class Admin_users : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            

                SqlConnection con = new SqlConnection("Data Source=DSVR019716\\SHAHZEB;Initial Catalog=BuzybeezWeb;Integrated Security=True");

                SqlCommand cmd = new SqlCommand(" select * from [dbo].[Admin]", con);

                SqlDataAdapter da = new SqlDataAdapter(cmd);

            DataSet ds1 = new DataSet(); 
                da.Fill(ds1);
                
                GridView1.DataSource = ds1;

            GridView1.DataBind();
            Label1.Visible = false;
            Label2.Visible = false;
            TextBox1.Visible = false;
            TextBox2.Visible = false;
            Button2.Visible = false;

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Label1.Visible = true;
            Label2.Visible = true;
            TextBox1.Visible = true;
            TextBox2.Visible = true;
            Button2.Visible = true;
          
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text != "" && TextBox2.Text != "")
            {


            SqlConnection con = new SqlConnection("Data Source=DSVR019716\\SHAHZEB;Initial Catalog=BuzybeezWeb;Integrated Security=True");

            SqlCommand cmd = new SqlCommand("insert into  [dbo].[Admin] (admin_email,admin_pass) values(@email,@pass)", con);
            cmd.Parameters.AddWithValue("@email", TextBox1.Text);
            cmd.Parameters.AddWithValue("@pass", TextBox2.Text);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
                Response.Redirect(Request.RawUrl);
            }
            else
            {
                Label1.Visible = true;
                Label2.Visible = true;
                TextBox1.Visible = true;
                TextBox2.Visible = true;
                Button2.Visible = true;
                Label3.Text = "Please Check  Fields are Empty";
            }
        }
    }
}