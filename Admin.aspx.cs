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
    public partial class Admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;
            PageBody.Attributes.Add("bgcolor", "lightgrey");
            TextBox1.Attributes.Add("autocomplete", "off");
            TextBox2.Attributes.Add("autocomplete", "off");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=DSVR019716\\SHAHZEB;Initial Catalog=BuzybeezWeb;Integrated Security=True");

            SqlCommand cmd = new SqlCommand("SELECT * FROM ADMIN WHERE admin_email=@admin_email And admin_pass=@admin_pass", con);
            cmd.Parameters.AddWithValue("@admin_email", TextBox1.Text);
            cmd.Parameters.AddWithValue("@admin_pass", TextBox2.Text);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                Session["admin_logged_in"] = true;
                Response.Redirect("~/FixedrateDetails.aspx");

            }

            else
            {
                Label1.Text = "Invalid Credentials";

            }
        }
    }
}