using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WEB
{
    public partial class Submit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string jobref = Convert.ToString(Session["Jobref"]);
            Label14.Text = jobref;
            Label22.Text = jobref;

            string name = Convert.ToString(Session["Name"]);
            Label1.Text = name;

            string PhoneNo = Convert.ToString(Session["PhoneNo"]);
            Label13.Text = PhoneNo;

            string flightno = Convert.ToString(Session["Flightno"]);
            Label2.Text = flightno;
            string Email = Convert.ToString(Session["Email"]);
            Label3.Text = Email;
            string Account = Convert.ToString(Session["Account"]);
            Label4.Text =Account;
            string BookingDate = Convert.ToString(Session["BookingDate"]);
            Label5.Text = BookingDate;
            string BookingTime = Convert.ToString(Session["BookingTime"]);
            Label6.Text = BookingTime;
            string Source = Convert.ToString(Session["Source"]);
            Label7.Text = Source;
            string Destination = Convert.ToString(Session["Destination"]);
            Label8.Text = Destination;
            string Vehicle = Convert.ToString(Session["Vehicle"]);
            Label9.Text = Vehicle;
            string Passengers = Convert.ToString(Session["Passengers"]);
            Label10.Text = Passengers;
            string Comment = Convert.ToString(Session["Comment"]);
            Label11.Text = Comment;
            string Fare = Convert.ToString(Session["Fare"]);
            Label12.Text = Fare;
            string Via1 = Convert.ToString(Session["Via1"]);
            Label21.Text =Via1;
            string Via2  = Convert.ToString(Session["Via2"]);
            Label15.Text = Via2;
            string Via3 = Convert.ToString(Session["Via3"]);
            Label16.Text = Via3;
            string Via4 = Convert.ToString(Session["Via4"]);
            Label17.Text = Via4;
            string Via5 = Convert.ToString(Session["Via5"]);
            Label18.Text =Via5;
            string Via6 = Convert.ToString(Session["Via6"]);
            Label19.Text = Via6;
            string Via7 = Convert.ToString(Session["Via7"]);
            Label20.Text = Via7;




            //Session["Name"] = TextBox1.Text;
            //Session["Flightno"] = TextBox6.Text;
            //Session["Email"] = TextBox2.Text;
            //Session["Account"] = DropDownList2.SelectedItem.Value;
            //Session["BookingDate"] = date.Text;
            //Session["BookingTime"] = time.Text;
            //Session["Source"] = na;
            //Session["Destination"] = na1;
            //Session["Vehicle"] = DropDownList3.SelectedItem.Value;
            //Session["Passengers"] = TextBox5.Text;
            //Session["Comment"] = textArea.Text;
            //Session["Fare"] = TextBox7.Text;
        }
    }
}