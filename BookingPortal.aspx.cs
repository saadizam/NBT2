using System;
using Microsoft.Diagnostics.Instrumentation.Extensions.Base;
using System.Activities.Statements;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Net.Http;
using System.Runtime.CompilerServices;
using System.Text;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.UI;
using System.Web.UI.WebControls;
using unirest_net.http;
using Newtonsoft.Json.Linq;
using static WEB.Booking;
using System.Text.RegularExpressions;
using System.Globalization;
using System.Net.Mail;
using System.Net;

namespace WEB
{
    public partial class BookingPortal : System.Web.UI.Page
    {


        protected void Page_Load(object sender, EventArgs e)
        {
            this.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;
            Label2.Style.Add("display", "none");
            txtFlag.Style.Add("display", "none");
            txtflag1.Style.Add("display", "none");
            Via1.Style.Add("display", "none");
            Via2.Style.Add("display", "none");
            Via3.Style.Add("display", "none");
            Via4.Style.Add("display", "none");
            Via5.Style.Add("display", "none");
            Via6.Style.Add("display", "none");
            Via7.Style.Add("display", "none");
            ViaCount.Style.Add("display", "none");
            farebtn.Style.Add("display", "none");
            txtMiles.Attributes.Add("readonly", "readonly");
            TextBox7.Attributes.Add("readonly", "readonly");
            txtJobRef.Attributes.Add("readonly", "readonly");
            TextBox5.Attributes.Add("readonly", "readonly");
            Button5.Style.Add("display", "none");
            this.Panel1.Style.Add("position", "absolute");
            this.Panel1.Style.Add("top", "500px");
            this.Panel1.Style.Add("left", "10px");


            this.txtJobRef.Style.Add("position", "absolute");
            this.txtJobRef.Style.Add("left", "15");
            this.txtJobRef.Style.Add("top", "5");

            Luggage.Attributes.Add("readonly", "readonly");
            Briefcase.Attributes.Add("readonly", "readonly");

            TextBox1.Attributes.Add("autocomplete", "off");
            TextBox2.Attributes.Add("autocomplete", "off");
            TextBox3.Attributes.Add("autocomplete", "off");
            TextBox5.Attributes.Add("autocomplete", "off");
            TextBox6.Attributes.Add("autocomplete", "off");
            textArea.Attributes.Add("autocomplete", "off");

            CalculationBtn.Style.Add("display", "none");
            txtJobRef.Style.Add("display", "none");
            //PageBody.Attributes.Add("bgcolor", "lightblue");
            Label1.Text = "";
            Label4.Text = "";
            Label5.Text = "";
            Label6.Text = "";

            date.Attributes["min"] = DateTime.Now.ToString("yyyy-MM-dd");
            time.Attributes["min"] = DateTime.Now.ToString("h:mm:ss tt");
            // ClientScript.RegisterStartupScript(GetType(), "Javascript", "javascript:checking(); ", true);
         //   ScriptManager.RegisterStartupScript(this, this.GetType(), "Javascript", "javascript:checking(); ", true);

            TextBox6.Visible = false;

            generateID();

            na = Request["txtFlag"];
            na1 = Request["txtflag1"];

            string start = txtFlag.Text;
            string end = txtflag1.Text;

            string pattern = "Airport";
            string pattern1 = "AIRPORT";
            string pattern2 = "airport";
            Regex rx = new Regex(pattern, RegexOptions.None);
            Regex rx1 = new Regex(pattern1, RegexOptions.None);
            Regex rx2 = new Regex(pattern2, RegexOptions.None);
            MatchCollection mc = rx.Matches(start);
            MatchCollection mce = rx.Matches(end);

            MatchCollection mc1 = rx1.Matches(start);
            MatchCollection mc1e = rx1.Matches(end);
            MatchCollection mc2 = rx2.Matches(start);
            MatchCollection mc2e = rx2.Matches(end);
            foreach (Match m in mc)
            {
                TextBox6.Visible = true;
            }
            foreach (Match m in mc1)
            {
                TextBox6.Visible = true;
            }
            foreach (Match m in mc2)
            {
                TextBox6.Visible = true;

            }
            foreach (Match m in mce)
            {
                TextBox6.Visible = true;
            }
            foreach (Match m in mc1e)
            {
                TextBox6.Visible = true;
            }
            foreach (Match m in mc2e)
            {
                TextBox6.Visible = true;

            }


        }
        //protected void Page_LoadComplete(object sender, EventArgs e)
        //{
        //    // Possibly even better to do this in the properties of the control...
        //    ImgCalculate_Click1(ImgCalculate, null);
        //}
        public int generateID()
        {

            //Label1.Text = Guid.NewGuid().ToString();
            Guid guid = Guid.NewGuid();
            Random random = new Random();
            int i = random.Next(0000000, 9999999);
            txtJobRef.Text = "NBTW" + (i.ToString());
            return i;

        }
        public static string connection = "";
        // public  string useremail, userpassword, first_name, last_name, display_name, phone, is_active, is_sys_admin, default_app_id, role_id;
        private string session_URL = "http://luton.co:80/api/v2/user/session";
        private string table_url = "http://www.luton.co:80/api/v2/live/_table/Booking";
        private string content_Type = "application/JSON";
        private string c_type = "content_type";
        private string table_Booking = "Booking";
        string token = "";

        public string Email = "", Password = "";
        private string officeName = "Norbiton";
        private string isSystemAdmin = "", dbIp = "", dbPort = "", dbName = "";
        public static long totalExecTime = 0;
        public static int totalElapseTime = 10000;
        public static string sessionId = null;
        public static string ApiKey = null;
        string na;
        string na1;
        string miles = "";
        string vvia1 = "";
        string vvia2 = "";
        string vvia3 = "";
        string vvia4 = "";
        string vvia5 = "";
        string vvia6 = "";
        string vvia7 = "";

        string frompickup;
        string topickup;

        string Via1outcode = "";
        string Via2outcode = "";
        string Via3outcode = "";
        string Via4outcode = "";
        string Via5outcode = "";
        string Via6outcode = "";
        string Via7outcode = "";
        string vehicletype;

        protected void OnServerValidate(object source, ServerValidateEventArgs args)
        {
            //DateTime dt;
            //args.IsValid = DateTime.TryParseExact(args.Value, "dd/mm/yyyy",
            //    CultureInfo.InvariantCulture, DateTimeStyles.None, out dt)
            //    && dt <= DateTime.Today;
        }

        double finalfare = 0.0;

        protected void Button5_Click(object sender, EventArgs e)
        {

            var dateAndTime = DateTime.Now;
            var onlydate = dateAndTime.Date;

            string nul = "";
            DateTime now = DateTime.Now;
            string currenttime = System.DateTime.Now.ToShortTimeString();
            string dt = DateTime.Now.ToString();

            //}
            //if ((Convert.ToDateTime(date.Text) == Convert.ToDateTime(onlydate) && Convert.ToDateTime(time.Text) > Convert.ToDateTime(currenttime)) || (Convert.ToDateTime(date.Text) > Convert.ToDateTime(onlydate) && Convert.ToDateTime(time.Text) != Convert.ToDateTime(currenttime)))
            //{
            //    Label5.Text = " Invalid Time. ";
            //    Label5.ForeColor = System.Drawing.Color.Orange;
            //}
            na = Request["txtFlag"];
            na1 = Request["txtflag1"];

            if (IsPostBack && txtFlag.Text != "" && txtflag1.Text != "" && TextBox1.Text != "" && TextBox2.Text != "" && TextBox3.Text != "" && Convert.ToDateTime(date.Text) >= Convert.ToDateTime(onlydate) && (Convert.ToDateTime(date.Text) == Convert.ToDateTime(onlydate) && Convert.ToDateTime(time.Text) > Convert.ToDateTime(currenttime)) || (Convert.ToDateTime(date.Text) > Convert.ToDateTime(onlydate) && Convert.ToDateTime(time.Text) != Convert.ToDateTime(currenttime)) && TextBox7.Text != "" && TextBox2.Text != "" && (DropDownList3.SelectedIndex == 0 && Convert.ToInt16(TextBox5.Text) <= 4 || DropDownList3.SelectedIndex == 1 && Convert.ToInt16(TextBox5.Text) <= 4 || DropDownList3.SelectedIndex == 2 && Convert.ToInt16(TextBox5.Text) <= 6 || DropDownList3.SelectedIndex == 3 && Convert.ToInt16(TextBox5.Text) <= 7 || DropDownList3.SelectedIndex == 4 && Convert.ToInt16(TextBox5.Text) <= 2 || DropDownList3.SelectedIndex == 5 && Convert.ToInt16(TextBox5.Text) <= 8 || DropDownList3.SelectedIndex == 6 && Convert.ToInt16(TextBox5.Text) <= 4 || DropDownList3.SelectedIndex == 7 && Convert.ToInt16(TextBox5.Text) <= 5))
            {
                frompickup = Request["FromPP"];
                topickup = Request["ToPP"];

                na = Request["txtFlag"];
                na1 = Request["txtflag1"];
                vvia1 = Request["Via1"];
                vvia2 = Request["Via2"];
                vvia3 = Request["Via3"];
                vvia4 = Request["Via4"];
                vvia5 = Request["Via5"];
                vvia6 = Request["Via6"];
                vvia7 = Request["Via7"];


                //From_outcode work
                string outcode1;
                var output = na.Split(' ', ',').Where(x => x == x.ToUpper());
                string finaloutput = output.Aggregate((item1, item2) => item1 + " " + item2);
                outcode1 = finaloutput;

                string[] Postal_Code = finaloutput.Split(' ');
                string NewCode = "";
                if (NewCode == Postal_Code[0])
                {
                    try
                    {
                        NewCode = Postal_Code[1];
                        finaloutput = NewCode;
                    }
                    catch
                    {

                    }
                }
                else
                {
                    NewCode = Postal_Code[0];
                    finaloutput = NewCode;
                }
                //To_outcode work
                string outcode2;
                var output2 = na1.Split(' ', ',').Where(x => x == x.ToUpper());
                string finaloutput2 = output2.Aggregate((item1, item2) => item1 + " " + item2);
                outcode2 = finaloutput2;
                string[] Postal_Code1 = finaloutput2.Split(' ');
                string NewCode1 = "";
                if (NewCode1 == Postal_Code1[0])
                {
                    try
                    {
                        NewCode1 = Postal_Code1[1];
                        finaloutput2 = NewCode1;
                    }
                    catch
                    {
                    }
                }
                else
                {
                    NewCode1 = Postal_Code1[0];
                    finaloutput2 = NewCode1;
                }





                if (vvia1 != "" && vvia2 == "" && vvia3 == "" && vvia4 == "" && vvia5 == "" && vvia6 == "" && vvia7 == "")
                {
                    try
                    {
                        var Via1output = vvia1.Split(' ', ',').Where(x => x == x.ToUpper());
                        string Via1finaloutput = Via1output.Aggregate((item1, item2) => item1 + " " + item2);
                        Via1outcode = Via1finaloutput;


                    }
                    catch
                    {

                    }
                }
                else if (vvia2 != "" && vvia3 == "" && vvia4 == "" && vvia5 == "" && vvia6 == "" && vvia7 == "")
                {
                    try
                    {
                        var Via1output = vvia1.Split(' ', ',').Where(x => x == x.ToUpper());
                        string Via1finaloutput = Via1output.Aggregate((item1, item2) => item1 + " " + item2);
                        Via1outcode = Via1finaloutput;


                        var Via2output = vvia2.Split(' ', ',').Where(x => x == x.ToUpper());
                        string Via2finaloutput = Via2output.Aggregate((item1, item2) => item1 + " " + item2);
                        Via2outcode = Via2finaloutput;

                    }
                    catch
                    {

                    }

                }
                else if (vvia3 != "" && vvia4 == "" && vvia5 == "" && vvia6 == "" && vvia7 == "")
                {
                    try
                    {
                        var Via1output = vvia1.Split(' ', ',').Where(x => x == x.ToUpper());
                        string Via1finaloutput = Via1output.Aggregate((item1, item2) => item1 + " " + item2);
                        Via1outcode = Via1finaloutput;

                        var Via2output = vvia2.Split(' ', ',').Where(x => x == x.ToUpper());
                        string Via2finaloutput = Via2output.Aggregate((item1, item2) => item1 + " " + item2);
                        Via2outcode = Via2finaloutput;

                        var Via3output = vvia3.Split(' ', ',').Where(x => x == x.ToUpper());
                        string Via3finaloutput = Via3output.Aggregate((item1, item2) => item1 + " " + item2);
                        Via3outcode = Via3finaloutput;
                    }


                    catch
                    {

                    }

                }
                else if (vvia4 != "" && vvia5 == "" && vvia6 == "" && vvia7 == "")
                {
                    try
                    {
                        var Via1output = vvia1.Split(' ', ',').Where(x => x == x.ToUpper());
                        string Via1finaloutput = Via1output.Aggregate((item1, item2) => item1 + " " + item2);
                        Via1outcode = Via1finaloutput;

                        var Via2output = vvia2.Split(' ', ',').Where(x => x == x.ToUpper());
                        string Via2finaloutput = Via2output.Aggregate((item1, item2) => item1 + " " + item2);
                        Via2outcode = Via2finaloutput;

                        var Via3output = vvia3.Split(' ', ',').Where(x => x == x.ToUpper());
                        string Via3finaloutput = Via3output.Aggregate((item1, item2) => item1 + " " + item2);
                        Via3outcode = Via3finaloutput;

                        var Via4output = vvia4.Split(' ', ',').Where(x => x == x.ToUpper());
                        string Via4finaloutput = Via4output.Aggregate((item1, item2) => item1 + " " + item2);
                        Via4outcode = Via4finaloutput;
                    }

                    catch
                    {

                    }

                }
                else if (vvia5 != "" && vvia6 == "" && vvia7 == "")
                {
                    try
                    {
                        var Via1output = vvia1.Split(' ', ',').Where(x => x == x.ToUpper());
                        string Via1finaloutput = Via1output.Aggregate((item1, item2) => item1 + " " + item2);
                        Via1outcode = Via1finaloutput;

                        var Via2output = vvia2.Split(' ', ',').Where(x => x == x.ToUpper());
                        string Via2finaloutput = Via2output.Aggregate((item1, item2) => item1 + " " + item2);
                        Via2outcode = Via2finaloutput;

                        var Via3output = vvia3.Split(' ', ',').Where(x => x == x.ToUpper());
                        string Via3finaloutput = Via3output.Aggregate((item1, item2) => item1 + " " + item2);
                        Via3outcode = Via3finaloutput;

                        var Via4output = vvia4.Split(' ', ',').Where(x => x == x.ToUpper());
                        string Via4finaloutput = Via4output.Aggregate((item1, item2) => item1 + " " + item2);
                        Via4outcode = Via4finaloutput;

                        var Via5output = vvia5.Split(' ', ',').Where(x => x == x.ToUpper());
                        string Via5finaloutput = Via5output.Aggregate((item1, item2) => item1 + " " + item2);
                        Via5outcode = Via5finaloutput;
                    }


                    catch
                    {

                    }

                }
                else if (vvia6 != "" && vvia7 == "")
                {
                    try
                    {
                        var Via1output = vvia1.Split(' ', ',').Where(x => x == x.ToUpper());
                        string Via1finaloutput = Via1output.Aggregate((item1, item2) => item1 + " " + item2);
                        Via1outcode = Via1finaloutput;

                        var Via2output = vvia2.Split(' ', ',').Where(x => x == x.ToUpper());
                        string Via2finaloutput = Via2output.Aggregate((item1, item2) => item1 + " " + item2);
                        Via2outcode = Via2finaloutput;

                        var Via3output = vvia3.Split(' ', ',').Where(x => x == x.ToUpper());
                        string Via3finaloutput = Via3output.Aggregate((item1, item2) => item1 + " " + item2);
                        Via3outcode = Via3finaloutput;

                        var Via4output = vvia4.Split(' ', ',').Where(x => x == x.ToUpper());
                        string Via4finaloutput = Via4output.Aggregate((item1, item2) => item1 + " " + item2);
                        Via4outcode = Via4finaloutput;

                        var Via5output = vvia5.Split(' ', ',').Where(x => x == x.ToUpper());
                        string Via5finaloutput = Via5output.Aggregate((item1, item2) => item1 + " " + item2);
                        Via5outcode = Via5finaloutput;

                        var Via6output = vvia6.Split(' ', ',').Where(x => x == x.ToUpper());
                        string Via6finaloutput = Via6output.Aggregate((item1, item2) => item1 + " " + item2);
                        Via6outcode = Via6finaloutput;
                    }

                    catch
                    {

                    }


                }
                else if (vvia7 != "")
                {
                    try
                    {
                        var Via1output = vvia1.Split(' ', ',').Where(x => x == x.ToUpper());
                        string Via1finaloutput = Via1output.Aggregate((item1, item2) => item1 + " " + item2);
                        Via1outcode = Via1finaloutput;

                        var Via2output = vvia2.Split(' ', ',').Where(x => x == x.ToUpper());
                        string Via2finaloutput = Via2output.Aggregate((item1, item2) => item1 + " " + item2);
                        Via2outcode = Via2finaloutput;

                        var Via3output = vvia3.Split(' ', ',').Where(x => x == x.ToUpper());
                        string Via3finaloutput = Via3output.Aggregate((item1, item2) => item1 + " " + item2);
                        Via3outcode = Via3finaloutput;

                        var Via4output = vvia4.Split(' ', ',').Where(x => x == x.ToUpper());
                        string Via4finaloutput = Via4output.Aggregate((item1, item2) => item1 + " " + item2);
                        Via4outcode = Via4finaloutput;

                        var Via5output = vvia5.Split(' ', ',').Where(x => x == x.ToUpper());
                        string Via5finaloutput = Via5output.Aggregate((item1, item2) => item1 + " " + item2);
                        Via5outcode = Via5finaloutput;

                        var Via6output = vvia6.Split(' ', ',').Where(x => x == x.ToUpper());
                        string Via6finaloutput = Via6output.Aggregate((item1, item2) => item1 + " " + item2);
                        Via6outcode = Via6finaloutput;

                        var Via7output = vvia7.Split(' ', ',').Where(x => x == x.ToUpper());
                        string Via7finaloutput = Via7output.Aggregate((item1, item2) => item1 + " " + item2);
                        Via7outcode = Via7finaloutput;
                    }

                    catch
                    {

                    }

                }



                //unix time converter
                DateTime datee = Convert.ToDateTime(date.Text);
                DateTime timee = Convert.ToDateTime(time.Text);
                //string value = timee.ToString("HH:mm:ss tt");
                DateTime combined = datee.Date.Add(timee.TimeOfDay);
                TimeSpan t = (combined - new DateTime(1970, 1, 1));
                int timestamp = (int)t.TotalSeconds;

                //for timetodespatch
                double val = Convert.ToDouble(TimeToDespatch.Text);
                double val2 = Math.Round(val);
                DateTime time_to_desp = timee.AddMinutes(-val2);
                DateTime combined1 = datee.Date.Add(time_to_desp.TimeOfDay);
                TimeSpan t1 = (combined1 - new DateTime(1970, 1, 1));
                int timestamp1 = (int)t1.TotalSeconds;

                try
                {
                    if (finaloutput == "" && finaloutput2 == "")
                    {
                        finaloutput = "NPC";
                        finaloutput2 = "NPC";
                    }
                    else if (finaloutput == "")
                    {
                        finaloutput = "NPC";
                    }
                    else if (finaloutput2 == "")
                    {
                        finaloutput2 = "NPC";
                    }
                    else
                    {

                    }
                    if (outcode1 == "" && outcode2 == "")
                    {
                        outcode1 = "NPC";
                        outcode2 = "NPC";
                    }
                    else if (outcode1 == "")
                    {
                        outcode1 = "NPC";
                    }
                    else if (outcode2 == "")
                    {
                        outcode2 = "NPC";
                    }
                    else
                    {

                    }

                    if (DropDownList3.SelectedIndex == 0)
                    {
                        vehicletype = "S";
                    }
                    if (DropDownList3.SelectedIndex == 1)
                    {
                        vehicletype = "E";
                    }
                    if (DropDownList3.SelectedIndex == 2)
                    {
                        vehicletype = "6";
                    }
                    if (DropDownList3.SelectedIndex == 3)
                    {
                        vehicletype = "7";
                    }
                    if (DropDownList3.SelectedIndex == 4)
                    {
                        vehicletype = "L";
                    }
                    if (DropDownList3.SelectedIndex == 5)
                    {
                        vehicletype = "8";
                    }
                    if (DropDownList3.SelectedIndex == 6)
                    {
                        vehicletype = "X";
                    }
                    if (DropDownList3.SelectedIndex == 7)
                    {
                        vehicletype = "5";
                    }

                    SqlConnection con = new SqlConnection("Data Source=DSVR019716\\SHAHZEB;Initial Catalog=BuzybeezWeb;Integrated Security=True");
                    SqlCommand cmd = new SqlCommand("insert into BookingPortalNBTT (jobref,account,accuser,bookedby,changed,commentt,creditcard,cstate,custname,date,datentime,despatchtime,driverate,drvfare,drvrcallsign,drvrreqdname,drvrname,drvrreqcallsign,dstate,fare,flag,flightno,[from],from_outcode,from_info,hold,isdirty,jobmileage,jobtype,jstate,leadtime,logc,logd,mstate,numofvia,office,oldfare,olddrvfare,orderno,tag,telephone,time,timetodespatchh,[to],to_info,to_outcode,userid,vehicletype,pin,callerid,Via1address,lat,lon,postcode,Via2address,lat1,lon1,postcode1,Via3address,lat2,lon2,postcode2,Via4address,lat3,lon3,postcode3,Via5address,lat4,lon4,postcode4,Via6address,lat5,lon5,postcode5,Via7address,lat6,lon6,postcode6,Passengers,from_postcode,to_postcode,from_lat,from_lon,to_lat,to_lon,logcdatentime,logcuserid,logcstate,Status) values (@jobref,@account,@accuser,@bookedby,@changed,@commentt,@creditcard,@cstate,@custname,@date,@datentime,@despatchtime,@driverate,@drvfare,@drvrcallsign,@drvrreqdname,@drvrname,@drvrreqcallsign,@dstate,@fare,@flag,@flightno,@from,@from_outcode,@from_info,@hold,@isdirty,@jobmileage,@jobtype,@jstate,@leadtime,@logc,@logd,@mstate,@numofvia,@office,@oldfare,@olddrvfare,@orderno,@tag,@telephone,@time,@timetodespatchh,@to,@to_info,@to_outcode,@userid,@vehicletype,@pin,@callerid,@Via1address,@lat,@lon,@postcode,@Via2address,@lat1,@lon1,@postcode1,@Via3address,@lat2,@lon2,@postcode2,@Via4address,@lat3,@lon3,@postcode3,@Via5address,@lat4,@lon4,@postcode4,@Via6address,@lat5,@lon5,@postcode5,@Via7address,@lat6,@lon6,@postcode6,@Passengers,@from_postcode,@to_postcode,@from_lat,@from_lon,@to_lat,@to_lon,@logcdatentime,@logcuserid,@logcstate,@Status)", con);

                    cmd.Parameters.AddWithValue("@jobref", txtJobRef.Text);
                    cmd.Parameters.AddWithValue("@account", DropDownList2.SelectedItem.Value);
                    cmd.Parameters.AddWithValue("@accuser", "");
                    cmd.Parameters.AddWithValue("@bookedby", "");
                    cmd.Parameters.AddWithValue("@changed", "false");
                    cmd.Parameters.AddWithValue("@commentt", textArea.Text);
                    cmd.Parameters.AddWithValue("@creditcard", TextBox2.Text);
                    cmd.Parameters.AddWithValue("@cstate", "booked");
                    cmd.Parameters.AddWithValue("@custname", TextBox1.Text);
                    cmd.Parameters.AddWithValue("@date", date.Text);
                    cmd.Parameters.AddWithValue("@datentime", timestamp);
                    cmd.Parameters.AddWithValue("@despatchtime", "0.0");
                    cmd.Parameters.AddWithValue("@driverate", DropDownList2.SelectedItem.Value);
                    cmd.Parameters.AddWithValue("@drvfare", TextBox7.Text);
                    cmd.Parameters.AddWithValue("@drvrcallsign", "");
                    cmd.Parameters.AddWithValue("@drvrreqdname", "");
                    cmd.Parameters.AddWithValue("@drvrname", "");
                    cmd.Parameters.AddWithValue("@drvrreqcallsign", "");
                    cmd.Parameters.AddWithValue("@dstate", "");
                    cmd.Parameters.AddWithValue("@fare", TextBox7.Text);
                    cmd.Parameters.AddWithValue("@flag", "0");
                    cmd.Parameters.AddWithValue("@flightno", TextBox6.Text);
                    cmd.Parameters.AddWithValue("@from", na);
                    cmd.Parameters.AddWithValue("@from_outcode", finaloutput);
                    cmd.Parameters.AddWithValue("@from_info", PPFrom.Text);
                    cmd.Parameters.AddWithValue("@hold", "");
                    cmd.Parameters.AddWithValue("@isdirty", "");
                    cmd.Parameters.AddWithValue("@jobmileage", txtMiles.Text);
                    cmd.Parameters.AddWithValue("@jobtype", "base");
                    cmd.Parameters.AddWithValue("@jstate", "unallocated");
                    cmd.Parameters.AddWithValue("@leadtime", "600");
                    cmd.Parameters.AddWithValue("@logc", "null");
                    cmd.Parameters.AddWithValue("@logd", "null");
                    cmd.Parameters.AddWithValue("@mstate", txtJobRef.Text);
                    cmd.Parameters.AddWithValue("@numofvia", ViaCount.Text);
                    cmd.Parameters.AddWithValue("@office", "NBT");
                    cmd.Parameters.AddWithValue("@oldfare", "0.0");
                    cmd.Parameters.AddWithValue("@olddrvfare", "0.0");
                    cmd.Parameters.AddWithValue("@orderno", "");
                    cmd.Parameters.AddWithValue("@tag", "");
                    cmd.Parameters.AddWithValue("@telephone", TextBox3.Text);
                    cmd.Parameters.AddWithValue("@time", time.Text);
                    cmd.Parameters.AddWithValue("@timetodespatchh", timestamp1);
                    cmd.Parameters.AddWithValue("@to", na1);
                    cmd.Parameters.AddWithValue("@to_info", PPTo.Text);
                    cmd.Parameters.AddWithValue("@to_outcode", finaloutput2);
                    cmd.Parameters.AddWithValue("@userid", "testmgrw@nbt.sc");
                    cmd.Parameters.AddWithValue("@vehicletype", vehicletype);
                    cmd.Parameters.AddWithValue("@pin", "");
                    cmd.Parameters.AddWithValue("@callerid", "");
                    cmd.Parameters.AddWithValue("@Via1address", vvia1);
                    cmd.Parameters.AddWithValue("@lat", Via1lat.Text);
                    cmd.Parameters.AddWithValue("@lon", Via1lon.Text);
                    cmd.Parameters.AddWithValue("@postcode", Via1outcode);
                    cmd.Parameters.AddWithValue("@Via2address", vvia2);
                    cmd.Parameters.AddWithValue("@lat1", Via2lat.Text);
                    cmd.Parameters.AddWithValue("@lon1", Via2lon.Text);
                    cmd.Parameters.AddWithValue("@postcode1", Via2outcode);
                    cmd.Parameters.AddWithValue("@Via3address", vvia3);
                    cmd.Parameters.AddWithValue("@lat2", Via3lat.Text);
                    cmd.Parameters.AddWithValue("@lon2", Via3lon.Text);
                    cmd.Parameters.AddWithValue("@postcode2", Via3outcode);
                    cmd.Parameters.AddWithValue("@Via4address", vvia4);
                    cmd.Parameters.AddWithValue("@lat3", Via4lat.Text);
                    cmd.Parameters.AddWithValue("@lon3", Via4lon.Text);
                    cmd.Parameters.AddWithValue("@postcode3", Via4outcode);
                    cmd.Parameters.AddWithValue("@Via5address", vvia5);
                    cmd.Parameters.AddWithValue("@lat4", Via5lat.Text);
                    cmd.Parameters.AddWithValue("@lon4", Via5lon.Text);
                    cmd.Parameters.AddWithValue("@postcode4", Via5outcode);
                    cmd.Parameters.AddWithValue("@Via6address", vvia6);
                    cmd.Parameters.AddWithValue("@lat5", Via6lat.Text);
                    cmd.Parameters.AddWithValue("@lon5", Via6lon.Text);
                    cmd.Parameters.AddWithValue("@postcode5", Via6outcode);
                    cmd.Parameters.AddWithValue("@Via7address", vvia7);
                    cmd.Parameters.AddWithValue("@lat6", Via7lat.Text);
                    cmd.Parameters.AddWithValue("@lon6", Via7lon.Text);
                    cmd.Parameters.AddWithValue("@postcode6", Via7outcode);
                    cmd.Parameters.AddWithValue("@Passengers", TextBox5.Text);

                    cmd.Parameters.AddWithValue("@from_postcode", outcode1);
                    cmd.Parameters.AddWithValue("@to_postcode", outcode2);
                    cmd.Parameters.AddWithValue("@from_lat", fromlat.Text);
                    cmd.Parameters.AddWithValue("@from_lon", fromlon.Text);
                    cmd.Parameters.AddWithValue("@to_lat", tolat.Text);
                    cmd.Parameters.AddWithValue("@to_lon", tolon.Text);
                    cmd.Parameters.AddWithValue("@logcdatentime", timestamp);
                    cmd.Parameters.AddWithValue("@logcuserid", "testmgrw@nbt.sc");
                    cmd.Parameters.AddWithValue("@logcstate", "booked");
                    cmd.Parameters.AddWithValue("@Status", "Pending");


                    Booking.RootObject b1 = new Booking.RootObject();

                    b1.to = na1;
                    b1.jobref = txtJobRef.Text;
                    b1.account = DropDownList2.SelectedItem.Value;
                    b1.accuser = "";
                    b1.bookedby = "";
                    b1.changed = false;
                    b1.comment = textArea.Text;
                    b1.creditcard = TextBox2.Text;
                    b1.cstate = "booked";
                    b1.custname = TextBox1.Text;
                    b1.date = date.Text;
                    b1.datentime = timestamp;
                    b1.despatchtime = 0.0;
                    b1.driverrate = DropDownList2.SelectedItem.Value;
                    b1.drvfare = Convert.ToDouble(TextBox7.Text);
                    b1.drvrcallsign = "";
                    b1.drvreqdname = "";
                    b1.drvrname = "";
                    b1.drvrreqcallsign = "";
                    b1.dstate = "";
                    b1.fare = Convert.ToDouble(TextBox7.Text);
                    b1.flag = 0;
                    b1.flightno = TextBox6.Text;
                    b1.from = na;
                    b1.from_outcode = finaloutput;
                    b1.from_info = PPFrom.Text;
                    b1.hold = false;
                    b1.isdirty = false;
                    b1.jobmileage = Convert.ToDouble(txtMiles.Text);
                    b1.jobtype = "base";
                    b1.jstate = "unallocated";
                    b1.leadtime = 600;
                    b1.logc = null;
                    b1.logd = null;
                    b1.mstate = txtJobRef.Text;
                    b1.numofvia = Convert.ToInt32(ViaCount.Text);
                    b1.office = "NBT";
                    b1.oldfare = 0.0;
                    b1.olddrvfare = 0.0;
                    b1.orderno = "";
                    b1.tag = "";
                    b1.telephone = TextBox3.Text;
                    b1.time = time.Text;
                    b1.timetodespatch = timestamp1;
                    b1.to_info = PPTo.Text;
                    b1.to_outcode = finaloutput2;
                    b1.userid = "testmgrnbt.sc";
                    b1.vehicletype = vehicletype;
                    b1.pin = "";
                    b1.callerid = "";
                    //viaoutcode null work
                    if (Via1outcode == "")
                    {
                        Via1outcode = null;
                    }
                    if (Via2outcode == "")
                    {
                        Via2outcode = null;
                    }
                    if (Via3outcode == "")
                    {
                        Via3outcode = null;
                    }
                    if (Via4outcode == "")
                    {
                        Via4outcode = null;
                    }
                    if (Via5outcode == "")
                    {
                        Via5outcode = null;
                    }
                    if (Via6outcode == "")
                    {
                        Via6outcode = null;
                    }
                    if (Via7outcode == "")
                    {
                        Via7outcode = null;
                    }

                    if (vvia1 == "")
                    {
                        vvia1 = null;
                    }
                    if (vvia2 == "")
                    {
                        vvia2 = null;
                    }
                    if (vvia3 == "")
                    {
                        vvia3 = null;
                    }
                    if (vvia4 == "")
                    {
                        vvia4 = null;
                    }
                    if (vvia5 == "")
                    {
                        vvia5 = null;
                    }
                    if (vvia6 == "")
                    {
                        vvia6 = null;
                    }
                    if (vvia7 == "")
                    {
                        vvia7 = null;
                    }

                    List<Fromtovia> FromtoVia1 = new List<Fromtovia>
                    {

                        new Booking.Fromtovia()
                        {
                            address = na,
                            lat = Convert.ToDouble(fromlat.Text),
                            lon = Convert.ToDouble(fromlon.Text),
                            postcode = outcode1

                        },

                        new Booking.Fromtovia()
                        {
                            address = na1,
                            lat = Convert.ToDouble(tolat.Text),
                            lon = Convert.ToDouble(tolon.Text),
                            postcode = outcode2
                        },

                   new Booking.Fromtovia()
                   {
                       address = vvia1,
                       lat = Convert.ToDouble(Via1lat.Text),
                       lon = Convert.ToDouble(Via1lon.Text),
                       postcode = Via1outcode
                   },
                    new Booking.Fromtovia()
                    {
                        address = vvia2,
                        lat = Convert.ToDouble(Via2lat.Text),
                        lon = Convert.ToDouble(Via2lat.Text),
                        postcode = Via2outcode
                    },

                    new Booking.Fromtovia()
                    {
                        address = vvia3,
                        lat = Convert.ToDouble(Via3lat.Text),
                        lon = Convert.ToDouble(Via3lon.Text),
                        postcode = Via3outcode
                    },
                    new Booking.Fromtovia()
                    {
                        address = vvia4,
                        lat = Convert.ToDouble(Via4lat.Text),
                        lon = Convert.ToDouble(Via4lon.Text),
                        postcode = Via4outcode
                    },

                    new Booking.Fromtovia()
                    {
                        address = vvia5,
                        lat = Convert.ToDouble(Via5lat.Text),
                        lon = Convert.ToDouble(Via5lon.Text),
                        postcode = Via5outcode
                    },
                    new Booking.Fromtovia()
                    {
                        address = vvia6,
                        lat = Convert.ToDouble(Via6lat.Text),
                        lon = Convert.ToDouble(Via6lon.Text),
                        postcode = Via6outcode
                    },

                     new Booking.Fromtovia()
                     {
                         address = vvia7,
                         lat = Convert.ToDouble(Via7lat.Text),
                         lon = Convert.ToDouble(Via7lon.Text),
                         postcode = Via7outcode
                     },
                };

                    List<object> root1 = new List<object>
                    {
                        timestamp, "booked", "testmgr@nbt.sc", ""
                    };
                    List<List<object>> logCArray = new List<List<object>>();
                    logCArray.Add(root1);
                    List<Booking.RootObject> root = new List<Booking.RootObject>
                    {

                    };

                    b1.logc = logCArray;
                    b1.fromtovia = FromtoVia1;

                    try
                    {
                        string adminEmail = "testmgr@test.sc";
                        string adminPwd = "manager";
                        //65@XYZ.SC", "010
                        var response = Unirest.post(session_URL)
                //   .header("X-DreamFactory-Api-Key", "ee3e951c2701a68c90438e9438e8fd8c3dcc3bd09651f9449356825a788d9e11")
                .body("{\"email\":\"" + adminEmail + "\", \"password\":\"" + adminPwd + "\"}")
                             //.body("{\"email\":testmgr@test.sc\"\", \"password\":manager\"}")
                             .asJson<string>();

                        var joResponse = JObject.Parse(response.Body);
                        var Ofc_nm = (JValue)joResponse["first_name"];
                        officeName = (string)Ofc_nm;
                        var Conn = (JValue)joResponse["last_name"];
                        connection = (string)Conn;
                        var data = connection.Split(',');
                        var sessn_id = (JValue)joResponse["session_token"];
                        sessionId = (string)sessn_id;
                        var response2 = Unirest.post(table_url)
                 .header("X-DreamFactory-API-Key", "2aa78e9692297e007d32f469509bdbe2cab6771a8bca56ab020ad9216a692df0")
                 .header("X-DreamFactory-Session-Token", sessionId)
                 .body(b1)
                 .asJson<Booking>();

                        if (sessn_id != null)
                        {
                        }
                    }
                    catch (Exception ex)
                    {
                    }


                    con.Open();
                    int i = cmd.ExecuteNonQuery();
                    con.Close();

                    try
                    {
                        //sending mail to customer id
                        var fromAddress = new MailAddress("stationcars321@gmail.com");
                        // var toAddress = new MailAddress("anas.ejaz1991@gmail.com");
                        var toAddress = new MailAddress(TextBox2.Text);
                        // var ccAdd1 = new MailAddress("ibrahimhv0345@gmail.com");
                        string fromPassword = "hvandroidsg321";
                        string subject = "booked";
                        string body = "<h3>Welcome to Kingston Office Booking Portal! You have Successfully booked a job ! Your Details are  </h3>" +
                           "<table border='1'><tr><th>From</th><th>To</th><th>Via</th><th>Fare</th><th>Flightno</th></tr><tr><td>" + na + "</td><td>" + na1 + "</td><td>" + vvia1 + "</td><td>" + TextBox7.Text + "</td><td>" + TextBox6.Text + "</td></tr></table><br><br><h3>Other Details</h3><table  border='1'><th>Bookiing Date</th><th>Booking Time</th><th>Vehicle</th><th>Job Reference</th><th>Name</th><th>Email</th><th>Phone</th><th>Account</th><th>Passenger</th><th>Comment</th></tr><tr><td>" + date.Text + "</td><td>" + time.Text + "</td><td>" + DropDownList3.Text + "</td><td>" + txtJobRef.Text + "</td><td>" + TextBox1.Text + "</td><td>" + TextBox2.Text + "</td><td>" + TextBox3.Text + "</td><td>" + DropDownList2.Text + "</td><td>" + TextBox5.Text + "</td><td>" + textArea.Text + "</td></tr></table>";
                        var smtpDriver = new SmtpClient
                        {
                            Host = "smtp.gmail.com",
                            Port = 587,
                            EnableSsl = true,

                            DeliveryMethod = SmtpDeliveryMethod.Network,
                            UseDefaultCredentials = true,

                            Credentials = new
                            NetworkCredential(fromAddress.Address, fromPassword)
                        };
                        var message = new MailMessage(fromAddress, toAddress);

                        message.CC.Add("info@kingstoncars.org.uk");
                        message.Subject = subject;
                        message.IsBodyHtml = true;
                        message.Body = body;
                        //  message.CC.Add(ccAdd1);

                        try
                        {
                            smtpDriver.Send(message);
                         
                        }
                        catch (Exception ex)
                        {
                            Label1.ForeColor = System.Drawing.Color.Orange;
                            Response.Write("Could not send the E-mail. Please Input E-mail correctly!");
                        }
                    }
                    catch
                    {
                        Label1.ForeColor = System.Drawing.Color.Orange;
                        Response.Write("Could not send the E-mail. Please Input E-mail correctly!");
                    }

                    Response.Redirect("Confirmationpage.aspx");
                    //Session["Jobref"] = txtJobRef.Text;
                    //Session["Name"] = TextBox1.Text;
                    //Session["PhoneNo"] = TextBox3.Text;
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
                    //Session["from_info"] = PPFrom.Text;
                    //Session["to_info"] = PPTo.Text;
                    //Session["Via1"] = vvia1;
                    //Session["Via2"] = vvia2;
                    //Session["Via3"] = vvia3;
                    //Session["Via4"] = vvia4;
                    //Session["Via5"] = vvia5;
                    //Session["Via6"] = vvia6;
                    //Session["Via7"] = vvia7;

                    //Label1.Text = "Job Saved Successfully, Thanks you";

                    //PPFrom.Text = "";
                    //PPTo.Text = "";

                }
                catch (Exception ex)
                {
                    //Label1.Text = ("Err"+ ex);
                    if (txtFlag.Text == "" || txtflag1.Text == "" || TextBox1.Text == "" || TextBox3.Text == "" || date.Text == "" || time.Text == "" || TextBox7.Text == "" || TextBox2.Text == "")
                    {
                        Label1.ForeColor = System.Drawing.Color.Orange;
                        Label1.Text = " Please Check! Some necessary fields are empty. ";
                    }
                    if ((Convert.ToDateTime(date.Text) == Convert.ToDateTime(onlydate) && Convert.ToDateTime(time.Text) < Convert.ToDateTime(currenttime)))
                    {
                        Label5.Text = " Invalid Time. ";
                        Label5.ForeColor = System.Drawing.Color.Orange;
                    }
                    if (Convert.ToDateTime(date.Text) < Convert.ToDateTime(onlydate))
                    {
                        Label4.ForeColor = System.Drawing.Color.Orange;
                        Label4.Text = " Invalid date.";
                    }
                    if (Convert.ToInt16(TextBox5.Text) >= 9)
                    {
                        Label7.ForeColor = System.Drawing.Color.Orange;
                        Label7.Text = " Passenger out of car's range.";
                    }
                    if (DropDownList3.SelectedIndex == 0 && Convert.ToInt16(TextBox5.Text) > 4 || DropDownList3.SelectedIndex == 1 && Convert.ToInt16(TextBox5.Text) > 4 || DropDownList3.SelectedIndex == 2 && Convert.ToInt16(TextBox5.Text) > 6 || DropDownList3.SelectedIndex == 3 && Convert.ToInt16(TextBox5.Text) > 7 || DropDownList3.SelectedIndex == 4 && Convert.ToInt16(TextBox5.Text) > 2 || DropDownList3.SelectedIndex == 5 && Convert.ToInt16(TextBox5.Text) > 8 || DropDownList3.SelectedIndex == 6 && Convert.ToInt16(TextBox5.Text) > 4 || DropDownList3.SelectedIndex == 7 && Convert.ToInt16(TextBox5.Text) > 5)
                    {
                        Label7.ForeColor = System.Drawing.Color.Orange;
                        Label7.Text = "Job Didn't Save. Passenger out of car's range.";
                    }
                }

            }


            else
            {
                //Response.Write("<script>alert('Incorrect');</script>");
                if (txtFlag.Text == "" || txtflag1.Text == "" || TextBox1.Text == "" || TextBox3.Text == "" || date.Text == "" || time.Text == "" || TextBox7.Text == "" || TextBox2.Text == "")

                {
                    Label1.ForeColor = System.Drawing.Color.Orange;
                    Label1.Text = " Please Check! Some necessary fields are empty. ";
                }
                if ((Convert.ToDateTime(date.Text) == Convert.ToDateTime(onlydate) && Convert.ToDateTime(time.Text) < Convert.ToDateTime(currenttime)))
                {
                    Label5.Text = " Invalid Time. ";
                    Label5.ForeColor = System.Drawing.Color.Orange;
                }
                if (Convert.ToDateTime(date.Text) < Convert.ToDateTime(onlydate))
                {
                    Label4.ForeColor = System.Drawing.Color.Orange;
                    Label4.Text = " Invalid date.";
                }
                if (Convert.ToInt16(TextBox5.Text) >= 9)
                {
                    Label7.ForeColor = System.Drawing.Color.Orange;
                    Label7.Text = " Passenger out of car's range.";
                }
                if (DropDownList3.SelectedIndex == 0 && Convert.ToInt16(TextBox5.Text) > 4 || DropDownList3.SelectedIndex == 1 && Convert.ToInt16(TextBox5.Text) > 4 || DropDownList3.SelectedIndex == 2 && Convert.ToInt16(TextBox5.Text) > 6 || DropDownList3.SelectedIndex == 3 && Convert.ToInt16(TextBox5.Text) > 7 || DropDownList3.SelectedIndex == 4 && Convert.ToInt16(TextBox5.Text) > 2 || DropDownList3.SelectedIndex == 5 && Convert.ToInt16(TextBox5.Text) > 8 || DropDownList3.SelectedIndex == 6 && Convert.ToInt16(TextBox5.Text) > 4 || DropDownList3.SelectedIndex == 7 && Convert.ToInt16(TextBox5.Text) > 5)
                {
                    Label7.ForeColor = System.Drawing.Color.Orange;
                    Label7.Text = "Job Didn't Save. Passenger out of car's range.";
                }
            }
        }
        public void placetoplace()
        {
            na = Request["txtFlag"];
            na1 = Request["txtflag1"];
            try { 
            if (na != "" && na1 != "")
            {
                SqlConnection con = new SqlConnection("Data Source=DSVR019716\\SHAHZEB;Initial Catalog=BuzybeezWeb;Integrated Security=True");
                SqlCommand cmd = new SqlCommand("Select Fare From FixedFare Where Source=@Source And Destination=@Destination And Vehicle=@Vehicle And Account=@Account", con);
                cmd.Parameters.AddWithValue("@Source", na);
                cmd.Parameters.AddWithValue("@Destination", na1);
                cmd.Parameters.AddWithValue("@Vehicle", DropDownList3.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@Account", DropDownList2.SelectedItem.Value);
                cmd.Connection = con;
                cmd.Connection.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        TextBox7.Text = dr["Fare"].ToString();
                        //  Label1.Text = "Fare Calculation Done!";
                    }
                }
                else
                {
                    Label1.ForeColor = System.Drawing.Color.Orange;
                    //        Label1.Text = "Sorry cant Find Desired Fare";
                    TextBox7.Text = "";
                }

                //start.Value = txtFlag.Text;
                //end.Value = txtflag1.Text;
                //  return true;
            }
                //else
                //{
            } //    return false;
            catch
            {

            }
            //}

        }
        public void placetoplot()
        {
            na = Request["txtFlag"];
            na1 = Request["txtflag1"];

            string postCode1 = na1;
            var output1 = postCode1.Split(' ', ',').Where(x => x == x.ToUpper());
            string finaloutput1 = output1.Aggregate((item1, item2) => item1 + " " + item2);
            //TextBox7.Text = finaloutput;

            string[] Postal_Code = finaloutput1.Split(' ');
            string NewCode = "";
            if (NewCode == Postal_Code[0])
            {
                NewCode = Postal_Code[1];
                // TextBox4.Text = NewCode1;
            }
            else
            {
                NewCode = Postal_Code[0];
                // TextBox4.Text = NewCode1;
            }

            if (na != "" && na1 != "")
            {
                SqlConnection con = new SqlConnection("Data Source=DSVR019716\\SHAHZEB;Initial Catalog=BuzybeezWeb;Integrated Security=True");
                SqlCommand cmd = new SqlCommand("Select Fare From FixedFare Where Source=@Source And Destination=@Destination And Vehicle=@Vehicle And Account=@Account", con);
                cmd.Parameters.AddWithValue("@Source", na);
                cmd.Parameters.AddWithValue("@Destination", NewCode);
                cmd.Parameters.AddWithValue("@Vehicle", DropDownList3.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@Account", DropDownList2.SelectedItem.Value);
                cmd.Connection = con;
                cmd.Connection.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        TextBox7.Text = dr["Fare"].ToString();
                        //  Label1.Text = "Fare Calculation Done!";
                    }
                }
                else
                {
                    Label1.ForeColor = System.Drawing.Color.Orange;
                    //        Label1.Text = "Sorry cant Find Desired Fare";
                    TextBox7.Text = "";
                }
                //start.Value = txtFlag.Text;
                //end.Value = txtflag1.Text;
            }

        }

        public void plottoplace()
        {
            na = Request["txtFlag"];
            na1 = Request["txtflag1"];
            try
            {
                string postCode1 = na;
                var output1 = postCode1.Split(' ', ',').Where(x => x == x.ToUpper());
                string finaloutput1 = output1.Aggregate((item1, item2) => item1 + " " + item2);
                //TextBox7.Text = finaloutput;

                string[] Postal_Code = finaloutput1.Split(' ');
                string NewCode = "";
                if (NewCode == Postal_Code[0])
                {
                    NewCode = Postal_Code[1];
                    // TextBox4.Text = NewCode1;
                }
                else
                {
                    NewCode = Postal_Code[0];
                    // TextBox4.Text = NewCode1;
                }

                if (na != "" && na1 != "")
                {
                    SqlConnection con = new SqlConnection("Data Source=DSVR019716\\SHAHZEB;Initial Catalog=BuzybeezWeb;Integrated Security=True");
                    SqlCommand cmd = new SqlCommand("Select Fare From FixedFare Where Source=@Source And Destination=@Destination And Vehicle=@Vehicle And Account=@Account", con);
                    cmd.Parameters.AddWithValue("@Source", NewCode);
                    cmd.Parameters.AddWithValue("@Destination", na1);
                    cmd.Parameters.AddWithValue("@Vehicle", DropDownList3.SelectedItem.Value);
                    cmd.Parameters.AddWithValue("@Account", DropDownList2.SelectedItem.Value);
                    cmd.Connection = con;
                    cmd.Connection.Open();
                    SqlDataReader dr = cmd.ExecuteReader();
                    if (dr.HasRows)
                    {
                        while (dr.Read())
                        {
                            TextBox7.Text = dr["Fare"].ToString();
                            //  Label1.Text = "Fare Calculation Done!";
                        }
                    }
                    else
                    {
                        Label1.ForeColor = System.Drawing.Color.Orange;
                        //        Label1.Text = "Sorry cant Find Desired Fare";
                        TextBox7.Text = "";
                    }
                    //start.Value = txtFlag.Text;
                    //end.Value = txtflag1.Text;
                }
            }
            catch
            {

            }

        }

        public void plottoplot()
        {

            string postCode = na;
            var output = postCode.Split(' ', ',').Where(x => x == x.ToUpper());
            string finaloutput = output.Aggregate((item1, item2) => item1 + " " + item2);
            //TextBox7.Text = finaloutput;
            try
            {
                string[] Postal_Code1 = finaloutput.Split(' ');
                string NewCode1 = "";
                if (NewCode1 == Postal_Code1[0])
                {
                    NewCode1 = Postal_Code1[1];
                    // TextBox4.Text = NewCode1;
                }
                else
                {
                    NewCode1 = Postal_Code1[0];
                    // TextBox4.Text = NewCode1;
                }
                string postCode1 = na1;
                var output1 = postCode1.Split(' ', ',').Where(x => x == x.ToUpper());
                string finaloutput1 = output1.Aggregate((item1, item2) => item1 + " " + item2);
                //TextBox7.Text = finaloutput;

                string[] Postal_Code = finaloutput1.Split(' ');
                string NewCode = "";
                if (NewCode == Postal_Code[0])
                {
                    NewCode = Postal_Code[1];
                    // TextBox4.Text = NewCode1;
                }
                else
                {
                    NewCode = Postal_Code[0];
                    // TextBox4.Text = NewCode1;
                }

                if (na != "" && na1 != "")
                {
                    SqlConnection con = new SqlConnection("Data Source=DSVR019716\\SHAHZEB;Initial Catalog=BuzybeezWeb;Integrated Security=True");
                    SqlCommand cmd = new SqlCommand("Select Fare From FixedFare Where Source=@Source And Destination=@Destination And Vehicle=@Vehicle And Account=@Account", con);
                    cmd.Parameters.AddWithValue("@Source", NewCode1);
                    cmd.Parameters.AddWithValue("@Destination", NewCode);
                    cmd.Parameters.AddWithValue("@Vehicle", DropDownList3.SelectedItem.Value);
                    cmd.Parameters.AddWithValue("@Account", DropDownList2.SelectedItem.Value);
                    cmd.Connection = con;
                    cmd.Connection.Open();
                    SqlDataReader dr = cmd.ExecuteReader();
                    if (dr.HasRows)
                    {
                        while (dr.Read())
                        {
                            TextBox7.Text = dr["Fare"].ToString();
                            //  Label1.Text = "Fare Calculation Done!";
                        }
                    }
                    else
                    {
                        Label1.ForeColor = System.Drawing.Color.Orange;
                        //        Label1.Text = "Sorry cant Find Desired Fare";
                        TextBox7.Text = "";
                    }



                    //start.Value = txtFlag.Text;
                    //end.Value = txtflag1.Text;
                }

            }
            catch
            {

            }

        }

        protected void farebtn_Click(object sender, EventArgs e)
        {

            miles = string.Empty;
            miles = Request["txtMiles"];
            //   ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('" + miles + "')", true);
            na = Request["txtFlag"];
            na1 = Request["txtflag1"];
            TextBox7.Text = "";

            if (TextBox7.Text == "")
            {
                placetoplace();
            }
            if (TextBox7.Text == "")
            {
                placetoplot();
            }
            if (TextBox7.Text == "")
            {
                plottoplace();
            }
            if (TextBox7.Text == "")
            {
                plottoplot();
            }


        }
        //mmm

        double fare = 0;
        int m = 0;
        int n = 0;
        int swap = 0;
        int min_price = 5;
        protected void CalculationBtn_Click(object sender, EventArgs e)
        {
            try
            {   // for fixed fare
                na = Request["txtFlag"];
                na1 = Request["txtflag1"];
                try
                {
                    farebtn_Click(sender, e);
                }
                catch(Exception ex)
                {

                }
                


                // for fare by using formula
                if (TextBox7.Text == "")
                {

                    miles = Request["txtMiles"];
                    // miles = Convert.ToString(Math.Round(Convert.ToDouble(miles), 2));
                    // txtMiles.Text = miles;
                    int k = 0;
                    var acc_unit = new double[8];
                    var acc_cost = new double[8];
                    var round = new string[8];
                    var extradrop = new double[8];
                    var nearest = new double[8];
                    SqlConnection con = new SqlConnection("Data Source=DSVR019716\\SHAHZEB;Initial Catalog=BuzybeezWeb;Integrated Security=True");
                    SqlCommand cmd = new SqlCommand("Select Unit,Cost,Round,ExtraDrop,ToNearest from " + "V" + DropDownList3.SelectedItem.Value + " Where Vehiclename=@Vehicle And AccountName=@Account ", con);
                    //SqlCommand cmd = new SqlCommand("insert into  FixedrateAccDetails (Office Name,Vehicle,Account,Unit,Cost,Roundup,Round,To Nearest,Minimum Price,Extra Drop,V.A.T Rate) values (@Office Name,@Vehicle,@Account,@Unit,@Cost,@Roundup,@Round,@To Nearest,@Minimum Price,@Extra Drop,@V.A.T Rate)", con);
                    cmd.Parameters.AddWithValue("@Account", DropDownList2.SelectedItem.Value);
                    cmd.Parameters.AddWithValue("@Vehicle", DropDownList3.SelectedItem.Value);
                    // string sqlText = "SELECT * FROM " + txtTableName.Text;
                    con.Open();
                    SqlDataReader dr = cmd.ExecuteReader();
                    if (dr.HasRows)
                    {
                        while (dr.Read())
                        {

                            acc_unit[k] = Convert.ToDouble(dr["Unit"]);
                            acc_cost[k] = Convert.ToDouble(dr["Cost"]);
                            round[k] = (dr["Round"]).ToString();
                            extradrop[k] = Convert.ToDouble(dr["ExtraDrop"]);
                            nearest[k] = Convert.ToDouble(dr["ToNearest"]);
                            k++;
                            //TextAccount.Text = dr["Unit"].ToString();
                            //label1.text = "fare calculation done!";
                        }


                        for (var j = 0; j < 8; j++)
                        {
                            if (Convert.ToDouble(miles) > swap && Convert.ToDouble(miles) <= swap + acc_unit[j])
                            {
                                m = j;
                                //swap = swap + acc_unit[j];
                                break;
                            }
                            //  swap = swap + acc_unit[j];
                        }
                        n = m;
                        for (var i = 0; i <= m; i++)
                        {
                            if (i == 0)
                            {
                                fare = Convert.ToDouble(miles) * acc_cost[m];

                                n = n - 1;
                            }
                            else
                            {
                                fare = fare + acc_unit[n] * (acc_cost[n] - acc_cost[m]);
                                n = n - 1;
                            }
                        }

                        //------------------------------------RoundWork
                        if (fare > min_price)
                        {
                            int z = 1;

                            if (round[z] == "UP")
                            {
                                if (nearest[k] <= 1.00)
                                {
                                    fare = Math.Ceiling(fare);
                                }
                                else if (nearest[k] > 1.00)
                                {
                                    fare = Math.Ceiling(fare);
                                    fare = fare + (nearest[k] - 1);
                                }
                            }
                            else if (round[k] == "DOWN")
                            {
                                if (nearest[k] <= 1.00)
                                {
                                    fare = Math.Floor(fare);
                                }
                                else if (nearest[k] > 1.00)
                                {
                                    fare = Math.Floor(fare);
                                    fare = fare - (nearest[k] - 1);
                                }
                            }
                        }

                        //--------------------------------ExtraDrop
                        else if (fare <= min_price)
                        {
                            fare = min_price;
                        }

                        if (extradrop[k] == null)
                        {
                            //  MessageBox.Show("Please Insert Extra Drop Value");
                        }
                        else
                        {
                            double a = Convert.ToDouble(ViaCount.Text);
                            fare = fare + (a * extradrop[k]);
                            Label2.Text = fare + "+" + a.ToString();
                        }

                        ////Scheme
                        //if (VATRate == null)
                        //{
                        //    MessageBox.Show("Please Select V.A.T Rate");
                        //}

                        //else if (VATRate == "Exempt" || VATRate == "Zero Rated")
                        //{
                        //}

                        //else if (VATRate == "Standard Rate")
                        //{
                        //    Standard_VAT = (20.00 * 0.01) * fare;
                        //    fare = Standard_VAT + fare;
                        //}



                        // airport work

                        string pattern = "Airport";
                        string pattern1 = "AIRPORT";
                        string pattern2 = "airport";
                        Regex rx = new Regex(pattern, RegexOptions.None);
                        Regex rx1 = new Regex(pattern1, RegexOptions.None);
                        Regex rx2 = new Regex(pattern2, RegexOptions.None);
                        MatchCollection mc = rx.Matches(na);
                        MatchCollection mc1 = rx1.Matches(na);
                        MatchCollection mc2 = rx2.Matches(na);
                        foreach (Match m in mc)
                        {

                            fare = fare + 5;

                            TextBox6.Visible = true;

                        }
                        foreach (Match m in mc1)
                        {

                            fare = fare + 5;

                            TextBox6.Visible = true;

                        }
                        foreach (Match m in mc2)
                        {

                            fare = fare + 5;

                            TextBox6.Visible = true;

                        }




                        TextBox7.Text = fare.ToString();


                        if (na == "" || na1 == "")
                        {
                            TextBox7.Text = "";
                            //  Label1.Text = "Please enter Source and Destination";
                        }
                        if (na == "")
                        {
                            //TextBox5.Visible = false;
                            // Label1.Text = "Please enter Source and Destination";
                        }
                        //if (vvia1 == "" )
                        //{
                        //    farebtn_Click( sender, e);
                        //}
                        //if (vvia2 == "")
                        //{
                        //    farebtn_Click(sender, e);
                        //}

                        //else
                        //{

                        //}
                        // finalfare =Convert.ToDouble(TextBox7.Text);
                        // Label1.ForeColor = System.Drawing.Color.Green;

                        // Label1.Text = "Fare Calculation Done!";



                    }

                    else
                    {
                        // Label1.ForeColor = System.Drawing.Color.Orange;
                        // Label1.Text = "Sorry cant Find Desired Fare. Please Check Account/Vehicle.";

                    }

                }
            }

            catch (Exception ex)
            {
                Label1.ForeColor = System.Drawing.Color.Orange;
                Label1.Text = "Sorry cant Find Desired Fare. Please Check Account/Vehicle.";

            }


        }

        protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
        {

            time_TextChanged(sender, e);
            if (DropDownList3.SelectedIndex == 0)
            {
                Label3.Text = Convert.ToString("Passengers 4");
                TextBox5.Text = "4";
                Luggage.Text = "2 Luggage";
                Briefcase.Text = "2 Briefcase";

            }
            if (DropDownList3.SelectedIndex == 1)
            {
                Label3.Text = Convert.ToString("Passengers 4");
                TextBox5.Text = "4";
                Luggage.Text = "2 Luggage";
                Briefcase.Text = "4 Briefcase";
            }
            if (DropDownList3.SelectedIndex == 2)
            {
                Label3.Text = Convert.ToString("");
                TextBox5.Text = "6";
                Luggage.Text = "3 Luggage";
                Briefcase.Text = "5 Briefcase";
            }
            if (DropDownList3.SelectedIndex == 3)
            {
                Label3.Text = Convert.ToString("");
                TextBox5.Text = "7";
                Luggage.Text = "3 Luggage";
                Briefcase.Text = "5 Briefcase";
            }


            if (DropDownList3.SelectedIndex == 4)
            {
                Label3.Text = Convert.ToString("Passengers 2");
                TextBox5.Text = "2";
                Luggage.Text = "1";
                Briefcase.Text = "1";
            }
            if (DropDownList3.SelectedIndex == 5)
            {
                Label3.Text = Convert.ToString("");
                TextBox5.Text = "8";
                Luggage.Text = "3 Luggage";
                Briefcase.Text = "5 Briefcase";
            }
            if (DropDownList3.SelectedIndex == 6)
            {
                Label3.Text = Convert.ToString("Passengers 4");
                TextBox5.Text = "4";
                Luggage.Text = "2 Luggage";
                Briefcase.Text = "2 Briefcase";
            }
            if (DropDownList3.SelectedIndex == 7)
            {
                Label3.Text = Convert.ToString("");
                TextBox5.Text = "5";
                Luggage.Text = "3 Luggage";
                Briefcase.Text = "5 Briefcase";
            }
            CalculationBtn_Click(sender, e);
        }

        protected void DropDownList3_TextChanged(object sender, EventArgs e)
        {


        }

        protected void TextBox5_TextChanged(object sender, EventArgs e)
        {
            time_TextChanged(sender, e);
            try
            {
                if (DropDownList3.SelectedIndex == 0)
                {
                    if (Convert.ToInt16(TextBox5.Text) > 4)
                    {
                        Label6.ForeColor = System.Drawing.Color.Orange;
                        Label6.Text = "Sorry!! .Saloon has limit of 4 passengers";
                        // Response.Write("<script>alert('Sorry!! .Saloon has limit of 4 passengers');</script>");

                    }

                }
                else if (DropDownList3.SelectedIndex == 1)
                {
                    if (Convert.ToInt16(TextBox5.Text) > 4)
                    {
                        Label6.ForeColor = System.Drawing.Color.Orange;
                        Label6.Text = "Sorry!! .Estate has limit of 4 passengers";
                    }
                }
                else if (DropDownList3.SelectedIndex == 2)
                {
                    if (Convert.ToInt16(TextBox5.Text) > 6)
                    {
                        Label6.ForeColor = System.Drawing.Color.Orange;
                        Label6.Text = "Sorry!! .Passenger Limit Exceed";
                    }
                }
                else if (DropDownList3.SelectedIndex == 3)
                {
                    if (Convert.ToInt16(TextBox5.Text) > 7)
                    {
                        Label6.ForeColor = System.Drawing.Color.Orange;
                        Label6.Text = "Sorry!! .Passenger Limit Exceed";
                    }
                }
                else if (DropDownList3.SelectedIndex == 4)
                {
                    if (Convert.ToInt16(TextBox5.Text) > 2)
                    {
                        Label6.ForeColor = System.Drawing.Color.Orange;
                        Label6.Text = "Sorry!! .Lowcar has limit of 2 passengers";
                    }
                }
                else if (DropDownList3.SelectedIndex == 5)
                {
                    if (Convert.ToInt16(TextBox5.Text) > 8)
                    {
                        Label6.ForeColor = System.Drawing.Color.Orange;
                        Label6.Text = "Sorry!! .Passenger Limit Exceed";
                    }
                }
                else if (DropDownList3.SelectedIndex == 6)
                {
                    if (Convert.ToInt16(TextBox5.Text) > 4)
                    {
                        Label6.ForeColor = System.Drawing.Color.Orange;
                        Label6.Text = "Sorry!! .Executive has limit of 4 passengers";
                    }
                }
                else if (DropDownList3.SelectedIndex == 7)
                {
                    if (Convert.ToInt16(TextBox5.Text) > 5)
                    {
                        Label6.ForeColor = System.Drawing.Color.Orange;
                        Label6.Text = "Sorry!! .5Seater has limit of 5 passengers";
                    }
                }

                else
                {
                    Label6.Text = "";
                }
            }
            catch
            {

            }
        }

        protected void date_TextChanged(object sender, EventArgs e)
        {
            TextBox5_TextChanged(sender, e);
            time_TextChanged(sender, e);
        }

        protected void time_TextChanged(object sender, EventArgs e)
        {
            var dateAndTime = DateTime.Now;
            var onlydate = dateAndTime.Date;
            string currenttime = System.DateTime.Now.ToShortTimeString();
            try
            {

                if (Convert.ToDateTime(date.Text) == Convert.ToDateTime(onlydate) && Convert.ToDateTime(time.Text) < Convert.ToDateTime(currenttime))
                {
                    Label5.Text = " Invalid Time. ";
                    Label5.ForeColor = System.Drawing.Color.Orange;
                }
                else
                {
                    Label5.Text = "";
                }
            }
            catch
            {

            }
            // TextBox5_TextChanged(sender, e);
        }

        protected void BooknowBtn_Click(object sender, EventArgs e)
        {
            var dateAndTime = DateTime.Now;
            var onlydate = dateAndTime.Date;
            string currenttime = System.DateTime.Now.ToShortTimeString();
            try { 
            Button5_Click(sender, e);
            }
            catch
            {
                if (txtFlag.Text == "" || txtflag1.Text == "" || TextBox1.Text == "" || TextBox3.Text == "" || date.Text == "" || time.Text == "" || TextBox7.Text == "" || TextBox2.Text == "")

                {
                    Label1.ForeColor = System.Drawing.Color.Orange;
                    Label1.Text = " Please Check! Some necessary fields are empty. ";
                }
                try
                {
                    if ((Convert.ToDateTime(date.Text) == Convert.ToDateTime(onlydate) && Convert.ToDateTime(time.Text) < Convert.ToDateTime(currenttime)))
                    {
                        Label5.Text = " Invalid Time. ";
                        Label5.ForeColor = System.Drawing.Color.Orange;
                    }
                    if (Convert.ToDateTime(date.Text) < Convert.ToDateTime(onlydate))
                    {
                        Label4.ForeColor = System.Drawing.Color.Orange;
                        Label4.Text = " Invalid date.";
                    }
                }
                catch
                {
                    Label4.ForeColor = System.Drawing.Color.Orange;
                    Label4.Text = "Please enter correct date and time.";
                }
            }
        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            TextBox5_TextChanged(sender, e);
            //time_TextChanged(sender, e);
            CalculationBtn_Click(sender, e);
        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {
        }

        protected void Final_Click(object sender, EventArgs e)
        {
            if (txtMiles.Text != "")
            {
                CalculationBtn_Click(sender, e);
            }
            else
            {
                Label1.ForeColor = System.Drawing.Color.Orange;
              //  Label1.Text = "No mileage found";

            }
        }

        protected void ImgBooknow_Click(object sender, ImageClickEventArgs e)
        {

        }

        protected void ImgCalculate_Click(object sender, ImageClickEventArgs e)
        {

        }

        protected void ImgCalculate_Click1(object sender, ImageClickEventArgs e)
        {

        }




    }
}



