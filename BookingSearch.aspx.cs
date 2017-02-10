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
    public partial class BookingSearch : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con1 = new SqlConnection("Data Source=DSVR019716\\SHAHZEB;Initial Catalog=BuzybeezWeb;Integrated Security=True");
            string query1 = "select custname,account,creditcard,date,time,Passengers,[from],[to],fare,flightno,jobref,Via1address,commentt,telephone from BookingPortalNBTT Order by id DESC";
            SqlDataAdapter da = new SqlDataAdapter(query1, con1);
            DataSet ds1 = new DataSet();
            da.Fill(ds1);
            GridView1.DataSource = ds1;
            GridView1.DataBind();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (DropDownList1.SelectedIndex == 1)
            {
                SqlConnection con = new SqlConnection("Data Source=DSVR019716\\SHAHZEB;Initial Catalog=BuzybeezWeb;Integrated Security=True");
                con.Open();
                SqlDataAdapter da = new SqlDataAdapter("select custname,account,creditcard,date,time,Passengers,[from],[to],fare,flightno,jobref,Via1address,commentt,telephone from BookingPortalNBTT Where jobref= '" + TextBox1.Text + "'", con);
                DataSet ds = new DataSet();
                da.Fill(ds);

                GridView1.DataSource = ds;
                GridView1.DataBind();

            }
            else if (DropDownList1.SelectedIndex ==2)
            {

                SqlConnection con = new SqlConnection("Data Source=DSVR019716\\SHAHZEB;Initial Catalog=BuzybeezWeb;Integrated Security=True");
                con.Open();
                SqlDataAdapter da = new SqlDataAdapter("select custname,account,creditcard,date,time,Passengers,[from],[to],fare,flightno,jobref,Via1address,commentt,telephone from BookingPortalNBTT Where [from]= '" + TextBox1.Text + "'", con);

                DataSet ds = new DataSet();
                da.Fill(ds);

                GridView1.DataSource = ds;
                GridView1.DataBind();
            }
            else if (DropDownList1.SelectedIndex == 3)
            {

                SqlConnection con = new SqlConnection("Data Source=DSVR019716\\SHAHZEB;Initial Catalog=BuzybeezWeb;Integrated Security=True");
                con.Open();
                SqlDataAdapter da = new SqlDataAdapter("select custname,account,creditcard,date,time,Passengers,[from],[to],fare,flightno,jobref,Via1address,commentt,telephone from BookingPortalNBTT Where [to]= '" + TextBox1.Text + "'", con);

                DataSet ds = new DataSet();
                da.Fill(ds);

                GridView1.DataSource = ds;
                GridView1.DataBind();
            }
            else if (DropDownList1.SelectedIndex == 4)
            {

                SqlConnection con = new SqlConnection("Data Source=DSVR019716\\SHAHZEB;Initial Catalog=BuzybeezWeb;Integrated Security=True");
                con.Open();
                SqlDataAdapter da = new SqlDataAdapter("select custname,account,creditcard,date,time,Passengers,[from],[to],fare,flightno,jobref,Via1address,commentt,telephone from BookingPortalNBTT Where custname= '" + TextBox1.Text + "'", con);

                DataSet ds = new DataSet();
                da.Fill(ds);

                GridView1.DataSource = ds;
                GridView1.DataBind();
            }
            else if (DropDownList1.SelectedIndex == 5)
            {

                SqlConnection con = new SqlConnection("Data Source=DSVR019716\\SHAHZEB;Initial Catalog=BuzybeezWeb;Integrated Security=True");
                con.Open();
                SqlDataAdapter da = new SqlDataAdapter("select custname,account,creditcard,date,time,Passengers,[from],[to],fare,flightno,jobref,Via1address,commentt,telephone from BookingPortalNBTT Where telephone = '" + TextBox1.Text + "'", con);

                DataSet ds = new DataSet();
                da.Fill(ds);

                GridView1.DataSource = ds;
                GridView1.DataBind();
            }
            else if (DropDownList1.SelectedIndex == 6)
            {

                SqlConnection con = new SqlConnection("Data Source=DSVR019716\\SHAHZEB;Initial Catalog=BuzybeezWeb;Integrated Security=True");
                con.Open();
                SqlDataAdapter da = new SqlDataAdapter("select custname,account,creditcard,date,time,Passengers,[from],[to],fare,flightno,jobref,Via1address,commentt,telephone from BookingPortalNBTT Where date= '" + TextBox1.Text + "'", con);

                DataSet ds = new DataSet();
                da.Fill(ds);

                GridView1.DataSource = ds;
                GridView1.DataBind();
            }
            else if (DropDownList1.SelectedIndex == 7)
            {

                SqlConnection con = new SqlConnection("Data Source=DSVR019716\\SHAHZEB;Initial Catalog=BuzybeezWeb;Integrated Security=True");
                con.Open();
                SqlDataAdapter da = new SqlDataAdapter("select custname,account,creditcard,date,time,Passengers,[from],[to],fare,flightno,jobref,Via1address,commentt,telephone from BookingPortalNBTT Where creditcard= '" + TextBox1.Text + "'", con);

                DataSet ds = new DataSet();
                da.Fill(ds);

                GridView1.DataSource = ds;
                GridView1.DataBind();
            }
        }

       
    }
}