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
    public partial class Mileagefare : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=DSVR019716\\SHAHZEB;Initial Catalog=BuzybeezWeb;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
       //     DropDownList10.Attributes.Add("readonly", "readonly");
            this.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;
            Panel5.Visible = false;

            if (!IsPostBack)
            {
                GridView1.Visible = false;
                GridView5.Visible = false;
                GridView3.Visible = false;
                GridView6.Visible = false;
                GridView7.Visible = false;
                GridView8.Visible = false;
                GridView9.Visible = false;
                GridView10.Visible = false;
                DropDownList10.Enabled = false;
               
                this.Button1.Style.Add("position", "absolute");
                this.Button1.Style.Add("top", "385px");
                this.Button1.Style.Add("left", "525px");

                this.TableGenerate.Style.Add("position", "absolute");
                this.TableGenerate.Style.Add("top", "425px");
                this.TableGenerate.Style.Add("left", "525px");

                DropDownList10.SelectedIndex = 2;
                PageBody.Attributes.Add("bgcolor","lightblue");

            }


        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            //Label1.Text = DropDownList1.SelectedItem.Text.ToString();
        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
       //     Label2.Text = DropDownList2.SelectedItem.Text.ToString();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //System.Text.RegularExpressions.Regex.IsMatch(TextBox1.Text, "[^0-9]")
            if (TextBox1.Text != "" && TextBox2.Text != "" && TextBox5.Text != "" && TextBox6.Text != "" && TextBox7.Text != "")
            {

                try
                {
                 
                    if (DropDownList2.SelectedValue == "Saloon")
                    {
                        SqlConnection con = new SqlConnection("Data Source=DSVR019716\\SHAHZEB;Initial Catalog=BuzybeezWeb;Integrated Security=True");
                        SqlCommand cmd = new SqlCommand("insert into VSaloon(OfficeName,AccountName,Vehiclename,Unit,Cost,RoundType,Round,ToNearest,MinimumPrice,ExtraDrop,VAT) values(@OfficeName,@AccountName,@Vehiclename,@Unit,@Cost,@RoundType,@Round,@ToNearest,@MinimumPrice,@ExtraDrop,@VAT)", con);
                        cmd.Parameters.AddWithValue("@OfficeName", DropDownList10.SelectedItem.Value);
                        cmd.Parameters.AddWithValue("@AccountName", DropDownList1.SelectedItem.Value);
                        cmd.Parameters.AddWithValue("@Vehiclename", DropDownList2.SelectedItem.Value);
                        cmd.Parameters.AddWithValue("@Unit", TextBox1.Text);
                        cmd.Parameters.AddWithValue("@Cost", TextBox2.Text);
                        cmd.Parameters.AddWithValue("@RoundType", DropDownList6.SelectedItem.Value);
                        cmd.Parameters.AddWithValue("@Round", DropDownList4.SelectedItem.Value);
                        cmd.Parameters.AddWithValue("@ToNearest", TextBox5.Text);
                        cmd.Parameters.AddWithValue("MinimumPrice", TextBox6.Text);
                        cmd.Parameters.AddWithValue("@ExtraDrop", TextBox7.Text);
                        cmd.Parameters.AddWithValue("@VAT", DropDownList5.SelectedItem.Value);
                        con.Open();
                        int i = cmd.ExecuteNonQuery();
                        con.Close();
                        if (i != 0)
                        {
                            Label4.Text = "Entries saved";
                            Label4.ForeColor = System.Drawing.Color.ForestGreen;
                            TextBox1.Text = "";
                            TextBox2.Text = "";
                            TextBox5.Text = "";
                            TextBox6.Text = "";
                            TextBox7.Text = "";
                        }
                        else
                        {
                            Label4.Text = "Something went wrong";
                            Label4.ForeColor = System.Drawing.Color.Red;
                        }
                        Response.Redirect("Mileagefare.aspx");
                    }
                    else if (DropDownList2.SelectedValue == "Estate")
                    {
                        SqlConnection con = new SqlConnection("Data Source=DSVR019716\\SHAHZEB;Initial Catalog=BuzybeezWeb;Integrated Security=True");
                        SqlCommand cmd = new SqlCommand("insert into VEstate(OfficeName,AccountName,Vehiclename,Unit,Cost,RoundType,Round,ToNearest,MinimumPrice,ExtraDrop,VAT) values(@OfficeName,@AccountName,@Vehiclename,@Unit,@Cost,@RoundType,@Round,@ToNearest,@MinimumPrice,@ExtraDrop,@VAT)", con);
                        cmd.Parameters.AddWithValue("@OfficeName", DropDownList10.SelectedItem.Value);
                        cmd.Parameters.AddWithValue("@AccountName", DropDownList1.SelectedItem.Value);
                        cmd.Parameters.AddWithValue("@Vehiclename", DropDownList2.SelectedItem.Value);
                        cmd.Parameters.AddWithValue("@Unit", TextBox1.Text);
                        cmd.Parameters.AddWithValue("@Cost", TextBox2.Text);
                        cmd.Parameters.AddWithValue("@RoundType", DropDownList6.SelectedItem.Value);
                        cmd.Parameters.AddWithValue("@Round", DropDownList4.SelectedItem.Value);
                        cmd.Parameters.AddWithValue("@ToNearest", TextBox5.Text);
                        cmd.Parameters.AddWithValue("MinimumPrice", TextBox6.Text);
                        cmd.Parameters.AddWithValue("@ExtraDrop", TextBox7.Text);
                        cmd.Parameters.AddWithValue("@VAT", DropDownList5.SelectedItem.Value);
                        con.Open();
                        int i = cmd.ExecuteNonQuery();
                        con.Close();
                        if (i != 0)
                        {
                            Label4.Text = "Entries saved";
                            Label4.ForeColor = System.Drawing.Color.ForestGreen;
                            TextBox1.Text = "";
                            TextBox2.Text = "";
                            TextBox5.Text = "";
                            TextBox6.Text = "";
                            TextBox7.Text = "";
                        }
                        else
                        {
                            Label4.Text = "Something went wrong";
                            Label4.ForeColor = System.Drawing.Color.Red;
                        }
                        Response.Redirect("Mileagefare.aspx");
                    }
                    else if (DropDownList2.SelectedValue == "Executive")
                    {
                        SqlConnection con = new SqlConnection("Data Source=DSVR019716\\SHAHZEB;Initial Catalog=BuzybeezWeb;Integrated Security=True");
                        SqlCommand cmd = new SqlCommand("insert into VExecutive(OfficeName,AccountName,Vehiclename,Unit,Cost,RoundType,Round,ToNearest,MinimumPrice,ExtraDrop,VAT) values(@OfficeName,@AccountName,@Vehiclename,@Unit,@Cost,@RoundType,@Round,@ToNearest,@MinimumPrice,@ExtraDrop,@VAT)", con);
                        cmd.Parameters.AddWithValue("@OfficeName", DropDownList10.SelectedItem.Value);
                        cmd.Parameters.AddWithValue("@AccountName", DropDownList1.SelectedItem.Value);
                        cmd.Parameters.AddWithValue("@Vehiclename", DropDownList2.SelectedItem.Value);
                        cmd.Parameters.AddWithValue("@Unit", TextBox1.Text);
                        cmd.Parameters.AddWithValue("@Cost", TextBox2.Text);
                        cmd.Parameters.AddWithValue("@RoundType", DropDownList6.SelectedItem.Value);
                        cmd.Parameters.AddWithValue("@Round", DropDownList4.SelectedItem.Value);
                        cmd.Parameters.AddWithValue("@ToNearest", TextBox5.Text);
                        cmd.Parameters.AddWithValue("MinimumPrice", TextBox6.Text);
                        cmd.Parameters.AddWithValue("@ExtraDrop", TextBox7.Text);
                        cmd.Parameters.AddWithValue("@VAT", DropDownList5.SelectedItem.Value);
                        con.Open();
                        int i = cmd.ExecuteNonQuery();
                        con.Close();
                        if (i != 0)
                        {
                            Label4.Text = "Entries saved";
                            Label4.ForeColor = System.Drawing.Color.ForestGreen;
                            TextBox1.Text = "";
                            TextBox2.Text = "";
                            TextBox5.Text = "";
                            TextBox6.Text = "";
                            TextBox7.Text = "";
                        }
                        else
                        {
                            Label4.Text = "Something went wrong";
                            Label4.ForeColor = System.Drawing.Color.Red;
                        }
                        Response.Redirect("Mileagefare.aspx");
                    }

                    else if (DropDownList2.SelectedValue == "Lowcar")
                    {
                        SqlConnection con = new SqlConnection("Data Source=DSVR019716\\SHAHZEB;Initial Catalog=BuzybeezWeb;Integrated Security=True");
                        SqlCommand cmd = new SqlCommand("insert into VLowcar(OfficeName,AccountName,Vehiclename,Unit,Cost,RoundType,Round,ToNearest,MinimumPrice,ExtraDrop,VAT) values(@OfficeName,@AccountName,@Vehiclename,@Unit,@Cost,@RoundType,@Round,@ToNearest,@MinimumPrice,@ExtraDrop,@VAT)", con);
                        cmd.Parameters.AddWithValue("@OfficeName", DropDownList10.SelectedItem.Value);
                        cmd.Parameters.AddWithValue("@AccountName", DropDownList1.SelectedItem.Value);
                        cmd.Parameters.AddWithValue("@Vehiclename", DropDownList2.SelectedItem.Value);
                        cmd.Parameters.AddWithValue("@Unit", TextBox1.Text);
                        cmd.Parameters.AddWithValue("@Cost", TextBox2.Text);
                        cmd.Parameters.AddWithValue("@RoundType", DropDownList6.SelectedItem.Value);
                        cmd.Parameters.AddWithValue("@Round", DropDownList4.SelectedItem.Value);
                        cmd.Parameters.AddWithValue("@ToNearest", TextBox5.Text);
                        cmd.Parameters.AddWithValue("MinimumPrice", TextBox6.Text);
                        cmd.Parameters.AddWithValue("@ExtraDrop", TextBox7.Text);
                        cmd.Parameters.AddWithValue("@VAT", DropDownList5.SelectedItem.Value);
                        con.Open();
                        int i = cmd.ExecuteNonQuery();
                        con.Close();
                        if (i != 0)
                        {
                            Label4.Text = "Entries saved";
                            Label4.ForeColor = System.Drawing.Color.ForestGreen;
                            TextBox1.Text = "";
                            TextBox2.Text = "";
                            TextBox5.Text = "";
                            TextBox6.Text = "";
                            TextBox7.Text = "";
                        }
                        else
                        {
                            Label4.Text = "Something went wrong";
                            Label4.ForeColor = System.Drawing.Color.Red;
                        }
                        Response.Redirect("Mileagefare.aspx");
                    }
                    else if (DropDownList2.SelectedValue == "5Seater")
                    {
                        SqlConnection con = new SqlConnection("Data Source=DSVR019716\\SHAHZEB;Initial Catalog=BuzybeezWeb;Integrated Security=True");
                        SqlCommand cmd = new SqlCommand("insert into V5Seater(OfficeName,AccountName,Vehiclename,Unit,Cost,RoundType,Round,ToNearest,MinimumPrice,ExtraDrop,VAT) values(@OfficeName,@AccountName,@Vehiclename,@Unit,@Cost,@RoundType,@Round,@ToNearest,@MinimumPrice,@ExtraDrop,@VAT)", con);
                        cmd.Parameters.AddWithValue("@OfficeName", DropDownList10.SelectedItem.Value);
                        cmd.Parameters.AddWithValue("@AccountName", DropDownList1.SelectedItem.Value);
                        cmd.Parameters.AddWithValue("@Vehiclename", DropDownList2.SelectedItem.Value);
                        cmd.Parameters.AddWithValue("@Unit", TextBox1.Text);
                        cmd.Parameters.AddWithValue("@Cost", TextBox2.Text);
                        cmd.Parameters.AddWithValue("@RoundType", DropDownList6.SelectedItem.Value);
                        cmd.Parameters.AddWithValue("@Round", DropDownList4.SelectedItem.Value);
                        cmd.Parameters.AddWithValue("@ToNearest", TextBox5.Text);
                        cmd.Parameters.AddWithValue("MinimumPrice", TextBox6.Text);
                        cmd.Parameters.AddWithValue("@ExtraDrop", TextBox7.Text);
                        cmd.Parameters.AddWithValue("@VAT", DropDownList5.SelectedItem.Value);
                        con.Open();
                        int i = cmd.ExecuteNonQuery();
                        con.Close();
                        if (i != 0)
                        {
                            Label4.Text = "Entries saved";
                            Label4.ForeColor = System.Drawing.Color.ForestGreen;
                            TextBox1.Text = "";
                            TextBox2.Text = "";
                            TextBox5.Text = "";
                            TextBox6.Text = "";
                            TextBox7.Text = "";
                        }
                        else
                        {
                            Label4.Text = "Something went wrong";
                            Label4.ForeColor = System.Drawing.Color.Red;
                        }
                        Response.Redirect("Mileagefare.aspx");
                    }
                    else if (DropDownList2.SelectedValue == "6Passenger")
                    {
                        SqlConnection con = new SqlConnection("Data Source=DSVR019716\\SHAHZEB;Initial Catalog=BuzybeezWeb;Integrated Security=True");
                        SqlCommand cmd = new SqlCommand("insert into V6Passenger(OfficeName,AccountName,Vehiclename,Unit,Cost,RoundType,Round,ToNearest,MinimumPrice,ExtraDrop,VAT) values(@OfficeName,@AccountName,@Vehiclename,@Unit,@Cost,@RoundType,@Round,@ToNearest,@MinimumPrice,@ExtraDrop,@VAT)", con);
                        cmd.Parameters.AddWithValue("@OfficeName", DropDownList10.SelectedItem.Value);
                        cmd.Parameters.AddWithValue("@AccountName", DropDownList1.SelectedItem.Value);
                        cmd.Parameters.AddWithValue("@Vehiclename", DropDownList2.SelectedItem.Value);
                        cmd.Parameters.AddWithValue("@Unit", TextBox1.Text);
                        cmd.Parameters.AddWithValue("@Cost", TextBox2.Text);
                        cmd.Parameters.AddWithValue("@RoundType", DropDownList6.SelectedItem.Value);
                        cmd.Parameters.AddWithValue("@Round", DropDownList4.SelectedItem.Value);
                        cmd.Parameters.AddWithValue("@ToNearest", TextBox5.Text);
                        cmd.Parameters.AddWithValue("MinimumPrice", TextBox6.Text);
                        cmd.Parameters.AddWithValue("@ExtraDrop", TextBox7.Text);
                        cmd.Parameters.AddWithValue("@VAT", DropDownList5.SelectedItem.Value);
                        con.Open();
                        int i = cmd.ExecuteNonQuery();
                        con.Close();
                        if (i != 0)
                        {
                            Label4.Text = "Entries saved";
                            Label4.ForeColor = System.Drawing.Color.ForestGreen;
                            TextBox1.Text = "";
                            TextBox2.Text = "";
                            TextBox5.Text = "";
                            TextBox6.Text = "";
                            TextBox7.Text = "";
                        }
                        else
                        {
                            Label4.Text = "Something went wrong";
                            Label4.ForeColor = System.Drawing.Color.Red;
                        }
                        Response.Redirect("Mileagefare.aspx");
                    }
                    else if (DropDownList2.SelectedValue == "7Passenger")
                    {
                        SqlConnection con = new SqlConnection("Data Source=DSVR019716\\SHAHZEB;Initial Catalog=BuzybeezWeb;Integrated Security=True");
                        SqlCommand cmd = new SqlCommand("insert into V7Passenger(OfficeName,AccountName,Vehiclename,Unit,Cost,RoundType,Round,ToNearest,MinimumPrice,ExtraDrop,VAT) values(@OfficeName,@AccountName,@Vehiclename,@Unit,@Cost,@RoundType,@Round,@ToNearest,@MinimumPrice,@ExtraDrop,@VAT)", con);
                        cmd.Parameters.AddWithValue("@OfficeName", DropDownList10.SelectedItem.Value);
                        cmd.Parameters.AddWithValue("@AccountName", DropDownList1.SelectedItem.Value);
                        cmd.Parameters.AddWithValue("@Vehiclename", DropDownList2.SelectedItem.Value);
                        cmd.Parameters.AddWithValue("@Unit", TextBox1.Text);
                        cmd.Parameters.AddWithValue("@Cost", TextBox2.Text);
                        cmd.Parameters.AddWithValue("@RoundType", DropDownList6.SelectedItem.Value);
                        cmd.Parameters.AddWithValue("@Round", DropDownList4.SelectedItem.Value);
                        cmd.Parameters.AddWithValue("@ToNearest", TextBox5.Text);
                        cmd.Parameters.AddWithValue("MinimumPrice", TextBox6.Text);
                        cmd.Parameters.AddWithValue("@ExtraDrop", TextBox7.Text);
                        cmd.Parameters.AddWithValue("@VAT", DropDownList5.SelectedItem.Value);
                        con.Open();
                        int i = cmd.ExecuteNonQuery();
                        con.Close();
                        if (i != 0)
                        {
                            Label4.Text = "Entries saved";
                            Label4.ForeColor = System.Drawing.Color.ForestGreen;
                            TextBox1.Text = "";
                            TextBox2.Text = "";
                            TextBox5.Text = "";
                            TextBox6.Text = "";
                            TextBox7.Text = "";
                        }
                        else
                        {
                            Label4.Text = "Something went wrong";
                            Label4.ForeColor = System.Drawing.Color.Red;
                        }
                        Response.Redirect("Mileagefare.aspx");
                    }
                    else if (DropDownList2.SelectedValue == "8Passenger")
                    {
                        SqlConnection con = new SqlConnection("Data Source=DSVR019716\\SHAHZEB;Initial Catalog=BuzybeezWeb;Integrated Security=True");
                        SqlCommand cmd = new SqlCommand("insert into V8Passenger(OfficeName,AccountName,Vehiclename,Unit,Cost,RoundType,Round,ToNearest,MinimumPrice,ExtraDrop,VAT) values(@OfficeName,@AccountName,@Vehiclename,@Unit,@Cost,@RoundType,@Round,@ToNearest,@MinimumPrice,@ExtraDrop,@VAT)", con);
                        cmd.Parameters.AddWithValue("@OfficeName", DropDownList10.SelectedItem.Value);
                        cmd.Parameters.AddWithValue("@AccountName", DropDownList1.SelectedItem.Value);
                        cmd.Parameters.AddWithValue("@Vehiclename", DropDownList2.SelectedItem.Value);
                        cmd.Parameters.AddWithValue("@Unit", TextBox1.Text);
                        cmd.Parameters.AddWithValue("@Cost", TextBox2.Text);
                        cmd.Parameters.AddWithValue("@RoundType", DropDownList6.SelectedItem.Value);
                        cmd.Parameters.AddWithValue("@Round", DropDownList4.SelectedItem.Value);
                        cmd.Parameters.AddWithValue("@ToNearest", TextBox5.Text);
                        cmd.Parameters.AddWithValue("MinimumPrice", TextBox6.Text);
                        cmd.Parameters.AddWithValue("@ExtraDrop", TextBox7.Text);
                        cmd.Parameters.AddWithValue("@VAT", DropDownList5.SelectedItem.Value);
                        con.Open();
                        int i = cmd.ExecuteNonQuery();
                        con.Close();
                        if (i != 0)
                        {
                            Label4.Text = "Entries saved";
                            Label4.ForeColor = System.Drawing.Color.ForestGreen;
                            TextBox1.Text = "";
                            TextBox2.Text = "";
                            TextBox5.Text = "";
                            TextBox6.Text = "";
                            TextBox7.Text = "";
                        }
                        else
                        {
                            Label4.Text = "Something went wrong";
                            Label4.ForeColor = System.Drawing.Color.Red;
                        }
                        Response.Redirect("Mileagefare.aspx");
                    }
                }
                catch
                {
                    if (System.Text.RegularExpressions.Regex.IsMatch(TextBox1.Text, "[^0-9]"))
                    {

                        TextBox1.Text.Remove(TextBox1.Text.Length - 1);
                        Label7.Text = ("Please enter only numeric value on Unit field.");
                    }
                    if (System.Text.RegularExpressions.Regex.IsMatch(TextBox2.Text, "[^0-9]"))
                    {

                        TextBox2.Text.Remove(TextBox2.Text.Length - 1);
                        Label7.Text = ("Please enter only numeric value on Cost field.");
                    }
                    if (System.Text.RegularExpressions.Regex.IsMatch(TextBox5.Text, "[^0-9]"))
                    {

                        TextBox5.Text.Remove(TextBox5.Text.Length - 1);
                        Label7.Text = ("Please enter only numeric value on Nearest field.");
                    }
                    if (System.Text.RegularExpressions.Regex.IsMatch(TextBox7.Text, "[^0-9]"))
                    {

                        TextBox7.Text.Remove(TextBox7.Text.Length - 1);
                        Label7.Text = ("Please enter only numeric value on ExtraDrop field.");
                    }
                    if (System.Text.RegularExpressions.Regex.IsMatch(TextBox6.Text, "[^0-9]"))
                    {

                        TextBox6.Text.Remove(TextBox6.Text.Length - 1);
                        Label7.Text = ("Please enter only numeric value on Price field.");
                    }
                  
                }


                     


            }

            else
                Label4.Text = "Error! Fill all fields.";

                }
                //catch
                //{
                //    Label4.Text = "Error! Fill all fields";
                //}




        protected void Button2_Click(object sender, EventArgs e)
        {
            //con.Open();
            //SqlCommand cmd = con.CreateCommand();
            //cmd.CommandType = CommandType.Text;
            //cmd.CommandText = "insert into CYPAccfare values('" + TextBox3.Text + "','" + TextBox4.Text + "')";
            //cmd.ExecuteNonQuery();
            //con.Close();

            //Response.Redirect("Mileagefare.aspx");

            //con.Open();
            //SqlCommand cmd = con.CreateCommand();
            //cmd.CommandType = CommandType.Text;
            //cmd.CommandText = "insert into FixedrateDriverDetails values('" + TextBox3.Text + "','" + TextBox4.Text + "')";
            //cmd.ExecuteNonQuery();
            //con.Close();

            //Response.Redirect("Mileagefare.aspx");

            


        }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownList10_SelectedIndexChanged(object sender, EventArgs e)
        {
            DropDownList10.SelectedIndex =2;
            //Label3.Text = DropDownList10.SelectedItem.Text.ToString();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=DSVR019716\\SHAHZEB;Initial Catalog=BuzybeezWeb;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("insert into  FixedRateDriverDetails(OffiiceName,Account,Vehicle,Unit,Cost,RoundType,Round,ToNearest,MinimumPrice,ExtraDrop,VAT,Percentage) values(@OffiiceName,@Account,@Vehicle,@Unit,@Cost,@RoundType,@Round,@ToNearest,@MinimumPrice,@ExtraDrop,@VAT,@Percentage)", con);
            //SqlCommand cmd = new SqlCommand("insert into  FixedrateAccDetails (Office Name,Vehicle,Account,Unit,Cost,Roundup,Round,To Nearest,Minimum Price,Extra Drop,V.A.T Rate) values (@Office Name,@Vehicle,@Account,@Unit,@Cost,@Roundup,@Round,@To Nearest,@Minimum Price,@Extra Drop,@V.A.T Rate)", con);
            cmd.Parameters.AddWithValue("@OffiiceName", DropDownList10.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@Account", DropDownList1.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@Vehicle", DropDownList2.SelectedItem.Value);

         //   cmd.Parameters.AddWithValue("@Unit", TextBox3.Text);
            cmd.Parameters.AddWithValue("@Cost", TextBox4.Text);
            cmd.Parameters.AddWithValue("@RoundType", DropDownList7.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@Round", DropDownList8.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@ToNearest", TextBox8.Text);
            cmd.Parameters.AddWithValue("MinimumPrice", TextBox9.Text);
            cmd.Parameters.AddWithValue("@ExtraDrop", TextBox10.Text);
            cmd.Parameters.AddWithValue("@VAT", DropDownList9.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@Percentage", TextBox11.Text);
            con.Open();
            int i = cmd.ExecuteNonQuery();
            con.Close();
            if (i != 0)
            {
                Label5.Text = "Entries saved";
                Label5.ForeColor = System.Drawing.Color.ForestGreen;
                //TextBox3.Text = "";
                TextBox4.Text = "";
                TextBox8.Text = "";
                TextBox9.Text = "";
                TextBox10.Text = "";
                TextBox11.Text = "";
              




            }


            else
            {
                Label5.Text = "Something went wrong";
                Label5.ForeColor = System.Drawing.Color.Red;

            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("FixedrateDetails.aspx");
        }


        



        protected void TableGenerate_Click(object sender, EventArgs e)
        {//saloon
            if (DropDownList12.SelectedValue == "Saloon")
            {
                GridView1.Visible = true;
                GridView5.Visible = false;
                GridView3.Visible = false;
                GridView6.Visible = false;
                GridView7.Visible = false;
                GridView8.Visible = false;
                GridView9.Visible = false;
                GridView10.Visible = false;
                this.GridView1.Style.Add("position", "absolute");
                this.GridView1.Style.Add("top", "450px");
                this.GridView1.Style.Add("left", "200px");
            }
            else if (DropDownList12.SelectedValue == "Estate")
            {//estate
                GridView1.Visible = false;
                GridView5.Visible = true;
                GridView3.Visible = false;
                GridView6.Visible = false;
                GridView7.Visible = false;
                GridView8.Visible = false;
                GridView9.Visible = false;
                GridView10.Visible = false;
                this.GridView5.Style.Add("position", "absolute");
                this.GridView5.Style.Add("top", "450px");
                this.GridView5.Style.Add("left", "200px");
            }
            else if (DropDownList12.SelectedValue == "Executive")
            {//Executive
                GridView1.Visible = false;
                GridView5.Visible = false;
                GridView3.Visible = true;
                GridView6.Visible = false;
                GridView7.Visible = false;
                GridView8.Visible = false;
                GridView9.Visible = false;
                GridView10.Visible = false;
                this.GridView3.Style.Add("position", "absolute");
                this.GridView3.Style.Add("top", "450px");
                this.GridView3.Style.Add("left", "200px");
            }

            else if (DropDownList12.SelectedValue == "Lowcar")
            {//Lowcar
                GridView1.Visible = false;
                GridView5.Visible = false;
                GridView3.Visible = false;
                GridView6.Visible = true;
                GridView7.Visible = false;
                GridView8.Visible = false;
                GridView9.Visible = false;
                GridView10.Visible = false;
                this.GridView6.Style.Add("position", "absolute");
                this.GridView6.Style.Add("top", "450px");
                this.GridView6.Style.Add("left", "200px");
            }
            else if (DropDownList12.SelectedValue == "5Seater")
            {//5 Seater
                GridView1.Visible = false;
                GridView5.Visible = false;
                GridView3.Visible = false;
                GridView6.Visible = false;
                GridView7.Visible = true;
                GridView8.Visible = false;
                GridView9.Visible = false;
                GridView10.Visible = false;
                this.GridView7.Style.Add("position", "absolute");
                this.GridView7.Style.Add("top", "450px");
                this.GridView7.Style.Add("left", "200px");
            }
            else if (DropDownList12.SelectedValue == "6Passenger")
            {
                GridView1.Visible = false;
                GridView5.Visible = false;
                GridView3.Visible = false;
                GridView6.Visible = false;
                GridView7.Visible = false;
                GridView8.Visible = true;
                GridView9.Visible = false;
                GridView10.Visible = false;
                this.GridView8.Style.Add("position", "absolute");
                this.GridView8.Style.Add("top", "450px");
                this.GridView8.Style.Add("left", "200px");
            }
            else if (DropDownList12.SelectedValue == "7Passenger")
            {
                GridView1.Visible = false;
                GridView5.Visible = false;
                GridView3.Visible = false;
                GridView6.Visible = false;
                GridView7.Visible = false;
                GridView8.Visible = false;
                GridView9.Visible = true;
                GridView10.Visible = false;
                this.GridView9.Style.Add("position", "absolute");
                this.GridView9.Style.Add("top", "450px");
                this.GridView9.Style.Add("left", "200px");
            }
            else if (DropDownList12.SelectedValue == "8Passenger")
            {
                GridView1.Visible = false;
                GridView5.Visible = false;
                GridView3.Visible = false;
                GridView6.Visible = false;
                GridView7.Visible = false;
                GridView8.Visible = false;
                GridView9.Visible = false;
                GridView10.Visible = true;
                this.GridView10.Style.Add("position", "absolute");
                this.GridView10.Style.Add("top", "450px");
                this.GridView10.Style.Add("left", "200px");
            }

        }

        protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Admin.aspx");
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
          
        }
    }
}