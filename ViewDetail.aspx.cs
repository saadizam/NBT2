using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ViewDetail : System.Web.UI.Page
{
    string id = "";
    protected void Page_Load(object sender, EventArgs e)
    {
       
        id = Request.QueryString["code"];
        SqlConnection con1 = new SqlConnection("Data Source=DSVR019716\\SHAHZEB;Initial Catalog=BuzybeezWeb;Integrated Security=True");
        string query1 = "select custname,account,creditcard,date,time,Passengers,[from],[to],fare,flightno,jobref,Via1address,commentt,telephone from BookingPortalNBTT where id=" + id + "";
        SqlDataAdapter da = new SqlDataAdapter(query1, con1);
        DataSet ds1 = new DataSet();
        da.Fill(ds1);
        GridView1.DataSource = ds1;
        GridView1.DataBind();
        //GridView1.DataSource = ds1;
       // GridView1.DataBind();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        id = Request.QueryString["code"];
        SqlConnection con1 = new SqlConnection("Data Source=DSVR019716\\SHAHZEB;Initial Catalog=BuzybeezWeb;Integrated Security=True");
        string query = "UPDATE BookingPortalNBTT SET STATUS ='CONFIRM' WHERE ID=" + id + " ";
        SqlCommand cmd = new SqlCommand(query, con1);
        con1.Open();
        cmd.ExecuteNonQuery();
        con1.Close();
        Response.Redirect("~/ViewBooking.aspx");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        id = Request.QueryString["code"];
        SqlConnection con1 = new SqlConnection("Data Source=DSVR019716\\SHAHZEB;Initial Catalog=BuzybeezWeb;Integrated Security=True");
        string query = "UPDATE BookingPortalNBTT SET STATUS ='Declined' WHERE ID=" + id + " ";
        SqlCommand cmd = new SqlCommand(query, con1);
        con1.Open();
        cmd.ExecuteNonQuery();
        con1.Close();
        Response.Redirect("~/ViewBooking.aspx");
    }
}