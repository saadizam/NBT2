using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WEB
{
    public partial class ViewBooking : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            TextBox1.Text = GridView1.SelectedRow.Cells[2].Text;
            TextBox2.Text = GridView1.SelectedRow.Cells[3].Text;
            TextBox3.Text = GridView1.SelectedRow.Cells[4].Text;
            TextBox4.Text = GridView1.SelectedRow.Cells[5].Text;
            TextBox5.Text = GridView1.SelectedRow.Cells[6].Text;
            TextBox6.Text = GridView1.SelectedRow.Cells[7].Text;
            TextBox7.Text = GridView1.SelectedRow.Cells[8].Text;
            TextBox8.Text = GridView1.SelectedRow.Cells[9].Text;
            TextBox9.Text = GridView1.SelectedRow.Cells[10].Text;
            TextBox10.Text = GridView1.SelectedRow.Cells[11].Text;
            TextBox11.Text = GridView1.SelectedRow.Cells[12].Text;
            TextBox12.Text = GridView1.SelectedRow.Cells[13].Text;
            TextBox13.Text = GridView1.SelectedRow.Cells[14].Text;
            TextBox14.Text = GridView1.SelectedRow.Cells[15].Text;
            TextBox15.Text = GridView1.SelectedRow.Cells[16].Text;
            TextBox16.Text = GridView1.SelectedRow.Cells[17].Text;
            TextBox17.Text = GridView1.SelectedRow.Cells[18].Text;
     

            


            Page_Load(sender, e);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                //sending mail to customer id
                var fromAddress = new MailAddress("stationcars321@gmail.com");
                // var toAddress = new MailAddress("anas.ejaz1991@gmail.com");
                var toAddress = new MailAddress("info@kingstoncars.org.uk");
                // var ccAdd1 = new MailAddress("ibrahimhv0345@gmail.com");
                string fromPassword = "hvandroidsg321";
                string subject = "job edit";
                string body = "Job editing mail! Change in Jobref " + TextBox8.Text + 
                    "\nSource Address: " + TextBox7.Text
                     + "\nDestination: " + TextBox10.Text + "\nfare:" + TextBox5.Text + "\nFlightno: " + TextBox6.Text +
                    "\nBooking Date: " +TextBox4.Text  + "\nBooking Time: " +TextBox15.Text+
                       "\nJobRef: " + TextBox8.Text + "\nName: " +TextBox3.Text + "\nEmail: " +TextBox2.Text
                     + "\nPhoneNo: " +TextBox14.Text 
                     + "\nAccount: " +TextBox1.Text  + "\nPassengers: " + TextBox12.Text + "\nComment: " + TextBox13.Text;

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
                message.Subject = subject;
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

        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            //if (DropDownList1.SelectedIndex == 1)

            //{
            //    SqlConnection con = new SqlConnection("Data Source=DSVR019716\\SHAHZEB;Initial Catalog=BuzybeezCYP;Integrated Security=True");
            //    con.Open();
            //    SqlDataAdapter da = new SqlDataAdapter("select [from] from BookingPortalCYP where [from] like '" +TextBox18.Text + "%'", con);
    
            //    DataSet ds = new DataSet();
            //    da.Fill(ds);
                
            //   GridView1.DataSource = ds;
            //GridView1.DataBind();
            }
        protected void GridView1_OnRowCommand(object sender, GridViewCommandEventArgs e)
        {
            int index = Convert.ToInt32(e.CommandArgument);
            //    Button btn = (Button)sender;
            //    GridViewRow row = (GridViewRow)btn.NamingContainer;
            // int rowIndex = Convert.ToInt32(Button2.Attributes["RowIndex"]);
            //   ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('"+index+"')", true);
            TextBox1.Text = GridView1.Rows[index].Cells[4].Text;
            TextBox2.Text = GridView1.Rows[index].Cells[5].Text;
            TextBox3.Text = GridView1.Rows[index].Cells[6].Text;
            TextBox4.Text = GridView1.Rows[index].Cells[7].Text;
            TextBox5.Text = GridView1.Rows[index].Cells[8].Text;
            TextBox6.Text = GridView1.Rows[index].Cells[9].Text;
            TextBox7.Text = GridView1.Rows[index].Cells[10].Text;
            TextBox8.Text = GridView1.Rows[index].Cells[11].Text;
            TextBox9.Text = GridView1.Rows[index].Cells[12].Text;
            TextBox10.Text = GridView1.Rows[index].Cells[13].Text;
            TextBox11.Text = GridView1.Rows[index].Cells[14].Text;
            TextBox12.Text = GridView1.Rows[index].Cells[15].Text;
            TextBox13.Text = GridView1.Rows[index].Cells[16].Text;
            TextBox14.Text = GridView1.Rows[index].Cells[17].Text;
            TextBox15.Text = GridView1.Rows[index].Cells[18].Text;
            TextBox16.Text = GridView1.Rows[index].Cells[19].Text;
            TextBox17.Text = GridView1.Rows[index].Cells[20].Text;
            //TextBox17.Text = GridView1.Rows[index].Cells[18].Text;
            try
            {
                //sending mail to customer id
                var fromAddress = new MailAddress("stationcars321@gmail.com");
                // var toAddress = new MailAddress("anas.ejaz1991@gmail.com");
                var toAddress = new MailAddress("info@kingstoncars.org.uk");
                // var ccAdd1 = new MailAddress("ibrahimhv0345@gmail.com");
                string fromPassword = "hvandroidsg321";
                string subject = "job edit";
                string body = "Job editing mail! Change in Jobref " + TextBox8.Text +
                    "\nSource Address: " + TextBox7.Text
                     + "\nDestination: " + TextBox10.Text + "\nfare:" + TextBox5.Text + "\nFlightno: " + TextBox6.Text +
                    "\nBooking Date: " + TextBox4.Text + "\nBooking Time: " + TextBox15.Text +
                       "\nJobRef: " + TextBox8.Text + "\nName: " + TextBox3.Text + "\nEmail: " + TextBox2.Text
                     + "\nPhoneNo: " + TextBox14.Text
                     + "\nAccount: " + TextBox1.Text + "\nPassengers: " + TextBox12.Text + "\nComment: " + TextBox13.Text;

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
                message.Subject = subject;
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




        }
    }
    }
