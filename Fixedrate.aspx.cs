using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace WEB
{
    public partial class Fixedrate : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=DSVR019716\\SHAHZEB;Initial Catalog=BuzybeezWeb;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            DropDownList1.Enabled = false;

            this.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;

            DropDownList1.SelectedValue = "Norbiton";

            if (TextBox9.Text != "" && TextBox10.Text != "")
            {
                int sumup = Convert.ToInt32(TextBox3.Text) * Convert.ToInt32(TextBox9.Text) + Convert.ToInt32(TextBox10.Text);
                TextBox8.Text = sumup.ToString();
            }

        }




        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Label1.Text = DropDownList1.SelectedItem.Text.ToString();
        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            Label2.Text = DropDownList2.SelectedItem.Text.ToString();
            if (DropDownList2.SelectedIndex == 0)
            {
                TextBox11.Visible = false;
                TextBox12.Visible = false;
                TextBox4.Text = "";
                TextBox5.Text = "";
                TextBox11.Text = "";
                TextBox12.Text = "";
                Label6.Text = "";
                Label6.Visible = false;

            }
            else if (DropDownList2.SelectedIndex == 1)
            {
                TextBox11.Visible = false;
                TextBox12.Visible = true;
                Button4.Visible = true;
                TextBox5.Text = "";
                TextBox4.Text = "";
                TextBox11.Text = "";
                TextBox12.Text = "";
                Label6.Text = "";
                Label6.Visible = true;
            }
            else if (DropDownList2.SelectedIndex == 2)
            {
                TextBox11.Visible = true;
                TextBox12.Visible = false;
                Button4.Visible = true;
                TextBox5.Text = "";
                TextBox4.Text = "";
                TextBox11.Text = "";
                TextBox12.Text = "";
                Label6.Text = "";
                Label6.Visible = true;
            }
            else if (DropDownList2.SelectedIndex == 3)
            {
                TextBox11.Visible = true;
                TextBox12.Visible = true;
                Button4.Visible = true;
                TextBox5.Text = "";
                TextBox4.Text = "";
                TextBox11.Text = "";
                TextBox12.Text = "";
                Label6.Text = "";
                Label6.Visible = true;
            }


        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                if (TextBox4.Text != "" && TextBox5.Text != "" && TextBox3.Text != "" && TextBox6.Text != "" && TextBox9.Text != "" && TextBox10.Text != "" && TextBox8.Text != "")
                {
                    if (DropDownList2.SelectedIndex == 0)
                    {
                        SqlConnection con = new SqlConnection("Data Source=DSVR019716\\SHAHZEB;Initial Catalog=BuzybeezWeb;Integrated Security=True");
                        SqlCommand cmd = new SqlCommand("insert into Fixedfare (OfficeNames,location,Vehicle,Source,Destination,Fare,Account) values (@OfficeNames,@location,@Vehicle,@Source,@Destination,@Fare,@Account)", con);
                        cmd.Parameters.AddWithValue("OfficeNames", DropDownList1.SelectedItem.Value);
                        cmd.Parameters.AddWithValue("@location", DropDownList2.SelectedItem.Value);
                        cmd.Parameters.AddWithValue("@Vehicle", TextBox6.Text);
                        cmd.Parameters.AddWithValue("@Source", TextBox4.Text);
                        cmd.Parameters.AddWithValue("@Destination", TextBox5.Text);
                        cmd.Parameters.AddWithValue("@Fare", TextBox8.Text);
                        cmd.Parameters.AddWithValue("@Account", DropDownList3.SelectedItem.Value);
                        con.Open();
                        int i = cmd.ExecuteNonQuery();
                        con.Close();
                        if (i != 0)
                        {
                            Label5.Text = "Entries saved";
                            Label5.ForeColor = System.Drawing.Color.ForestGreen;
                            TextBox11.Text = "";
                            TextBox12.Text = "";
                            TextBox4.Text = "";
                            TextBox5.Text = "";
                            TextBox3.Text = "";
                            TextBox6.Text = "";
                            TextBox9.Text = "";
                            TextBox10.Text = "";
                            TextBox8.Text = "";
                        }
                    }

                    else if (DropDownList2.SelectedIndex == 1)
                    {
                        SqlConnection con = new SqlConnection("Data Source=DSVR019716\\SHAHZEB;Initial Catalog=BuzybeezWeb;Integrated Security=True");
                        SqlCommand cmd = new SqlCommand("insert into Fixedfare (OfficeNames,location,Vehicle,Source,Destination,Fare,Account) values (@OfficeNames,@location,@Vehicle,@Source,@Destination,@Fare,@Account)", con);
                        cmd.Parameters.AddWithValue("OfficeNames", DropDownList1.SelectedItem.Value);
                        cmd.Parameters.AddWithValue("@location", DropDownList2.SelectedItem.Value);
                        cmd.Parameters.AddWithValue("@Vehicle", TextBox6.Text);
                        cmd.Parameters.AddWithValue("@Source", TextBox4.Text);
                        cmd.Parameters.AddWithValue("@Destination", TextBox12.Text);
                        cmd.Parameters.AddWithValue("@Fare", TextBox8.Text);
                        cmd.Parameters.AddWithValue("@Account", DropDownList3.SelectedItem.Value);
                        con.Open();
                        int i = cmd.ExecuteNonQuery();
                        con.Close();
                        if (i != 0)
                        {
                            Label5.Text = "Entries saved";
                            Label5.ForeColor = System.Drawing.Color.ForestGreen;
                            TextBox11.Text = "";
                            TextBox12.Text = "";
                            TextBox4.Text = "";
                            TextBox5.Text = "";
                            TextBox3.Text = "";
                            TextBox6.Text = "";
                            TextBox9.Text = "";
                            TextBox10.Text = "";
                            TextBox8.Text = "";
                        }
                    }
                    else if (DropDownList2.SelectedIndex == 2)
                    {
                        SqlConnection con = new SqlConnection("Data Source=DSVR019716\\SHAHZEB;Initial Catalog=BuzybeezWeb;Integrated Security=True");
                        SqlCommand cmd = new SqlCommand("insert into Fixedfare (OfficeNames,location,Vehicle,Source,Destination,Fare,Account) values (@OfficeNames,@location,@Vehicle,@Source,@Destination,@Fare,@Account)", con);
                        cmd.Parameters.AddWithValue("OfficeNames", DropDownList1.SelectedItem.Value);
                        cmd.Parameters.AddWithValue("@location", DropDownList2.SelectedItem.Value);
                        cmd.Parameters.AddWithValue("@Vehicle", TextBox6.Text);
                        cmd.Parameters.AddWithValue("@Source", TextBox11.Text);
                        cmd.Parameters.AddWithValue("@Destination", TextBox5.Text);
                        cmd.Parameters.AddWithValue("@Fare", TextBox8.Text);
                        cmd.Parameters.AddWithValue("@Account", DropDownList3.SelectedItem.Value);
                        con.Open();
                        int i = cmd.ExecuteNonQuery();
                        con.Close();
                        if (i != 0)
                        {
                            Label5.Text = "Entries saved";
                            Label5.ForeColor = System.Drawing.Color.ForestGreen;
                            TextBox11.Text = "";
                            TextBox12.Text = "";
                            TextBox4.Text = "";
                            TextBox5.Text = "";
                            TextBox3.Text = "";
                            TextBox6.Text = "";
                            TextBox9.Text = "";
                            TextBox10.Text = "";
                            TextBox8.Text = "";
                        }
                    }
                    else if (DropDownList2.SelectedIndex == 3)
                    {
                        SqlConnection con = new SqlConnection("Data Source=DSVR019716\\SHAHZEB;Initial Catalog=BuzybeezWeb;Integrated Security=True");
                        SqlCommand cmd = new SqlCommand("insert into Fixedfare (OfficeNames,location,Vehicle,Source,Destination,Fare,Account) values (@OfficeNames,@location,@Vehicle,@Source,@Destination,@Fare,@Account)", con);
                        cmd.Parameters.AddWithValue("OfficeNames", DropDownList1.SelectedItem.Value);
                        cmd.Parameters.AddWithValue("@location", DropDownList2.SelectedItem.Value);
                        cmd.Parameters.AddWithValue("@Vehicle", TextBox6.Text);
                        cmd.Parameters.AddWithValue("@Source", TextBox11.Text);
                        cmd.Parameters.AddWithValue("@Destination", TextBox12.Text);
                        cmd.Parameters.AddWithValue("@Fare", TextBox8.Text);
                        cmd.Parameters.AddWithValue("@Account", DropDownList3.SelectedItem.Value);
                        con.Open();
                        int i = cmd.ExecuteNonQuery();
                        con.Close();
                        if (i != 0)
                        {
                            Label5.Text = "Entries saved";
                            Label5.ForeColor = System.Drawing.Color.ForestGreen;
                            TextBox11.Text = "";
                            TextBox12.Text = "";
                            TextBox4.Text = "";
                            TextBox5.Text = "";
                            TextBox3.Text = "";
                            TextBox6.Text = "";
                            TextBox9.Text = "";
                            TextBox10.Text = "";
                            TextBox8.Text = "";
                        }
                    }

                    else
                    {
                        Label5.Text = "Something went wrong";
                        Label5.ForeColor = System.Drawing.Color.Red;
                    }
                }
                else
                {
                    Label5.ForeColor = System.Drawing.Color.Red;
                    Label5.Text = ("Some necessary Fields are Empty");
                }
            }
            catch (Exception ex)
            {

            }
        }
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            TextBox6.Text = GridView1.SelectedRow.Cells[2].Text;
            TextBox9.Text = GridView1.SelectedRow.Cells[3].Text;
            TextBox10.Text = GridView1.SelectedRow.Cells[4].Text;


            Page_Load(sender, e);
        }





        protected void Button2_Click(object sender, EventArgs e)
        {
        }

        protected void TextBox4_TextChanged(object sender, EventArgs e)
        {
            CheckBox1.Checked = false;
        }

        protected void TextBox5_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            if (TextBox4.Text != "" && TextBox5.Text != "")
            {
                string postCode = TextBox4.Text;
                var output = postCode.Split(' ', ',').Where(x => x == x.ToUpper());
                string finaloutput = output.Aggregate((item1, item2) => item1 + " " + item2);
                TextBox11.Text = finaloutput;


                string[] Postal_Code = finaloutput.Split(' ');
                string NewCode = "";
                if (NewCode == Postal_Code[0])
                {
                    NewCode = Postal_Code[1];
                    TextBox11.Text = NewCode;
                }

                else
                {
                    NewCode = Postal_Code[0];
                    TextBox11.Text = NewCode;
                }

                string postCode2 = TextBox5.Text;
                var output2 = postCode2.Split(' ', ',').Where(x => x == x.ToUpper());
                string finaloutput2 = output2.Aggregate((item1, item2) => item1 + " " + item2);
                TextBox12.Text = finaloutput2;

                string[] Postal_Code1 = finaloutput2.Split(' ');
                string NewCode1 = "";
                if (NewCode1 == Postal_Code1[0])
                {
                    NewCode1 = Postal_Code1[1];
                    TextBox12.Text = NewCode1;
                }
                else
                {
                    NewCode1 = Postal_Code1[0];
                    TextBox12.Text = NewCode1;
                }

                if (DropDownList2.SelectedItem.Value == "Plot to Plot" && TextBox11.Text == "" && TextBox12.Text == "")
                {
                    Label6.Text = "Please Select Correct Mode, It's not Plot to Plot mode";
                    Label6.ForeColor = System.Drawing.Color.Red;
                    TextBox4.Text = "";
                    TextBox5.Text = "";
                    TextBox11.Text = "";
                    TextBox12.Text = "";

                }

                else if (DropDownList2.SelectedItem.Value == "Plot to Plot" && TextBox11.Text == "")
                {
                    Label6.Text = "Please Select Correct Mode, It's not Plot to Plot mode";
                    Label6.ForeColor = System.Drawing.Color.Red;
                    TextBox4.Text = "";
                    TextBox5.Text = "";
                    TextBox11.Text = "";
                    TextBox12.Text = "";

                }


                else if (DropDownList2.SelectedItem.Value == "Plot to Plot" && TextBox12.Text == "")
                {
                    Label6.Text = "Please Select Correct Mode, It's not Plot to Plot mode";
                    Label6.ForeColor = System.Drawing.Color.Red;
                    TextBox4.Text = "";
                    TextBox5.Text = "";
                    TextBox11.Text = "";
                    TextBox12.Text = "";

                }
                else if (DropDownList2.SelectedItem.Value == "Plot to Place" && TextBox11.Text == "")
                {
                    Label6.Text = "Please Select Correct Mode, It's not Plot to Place mode";
                    Label6.ForeColor = System.Drawing.Color.Red;
                    TextBox4.Text = "";
                    //    TextBox5.Text = "";
                }
                else if (DropDownList2.SelectedItem.Value == "Place to Plot" && TextBox12.Text == "")
                {
                    Label6.Text = "Please Select Correct Mode, It's not Place to Plot mode";
                    Label6.ForeColor = System.Drawing.Color.Red;
                    //  TextBox4.Text = "";
                    TextBox5.Text = "";
                }
            }

        }




        protected void TextBox10_TextChanged(object sender, EventArgs e)
        {
            // Button3.Enabled = true;

        }



        protected void Button5_Click(object sender, EventArgs e)
        {
            string postCode2 = TextBox5.Text;
            var output2 = postCode2.Split(' ', ',').Where(x => x == x.ToUpper());
            string finaloutput2 = output2.Aggregate((item1, item2) => item1 + " " + item2);
            TextBox12.Text = finaloutput2;

            string[] Postal_Code1 = finaloutput2.Split(' ');
            string NewCode1 = "";
            if (NewCode1 == Postal_Code1[0])
            {
                NewCode1 = Postal_Code1[1];
                TextBox12.Text = NewCode1;
            }
            else
            {
                NewCode1 = Postal_Code1[0];
                TextBox12.Text = NewCode1;
            }
        }


        protected void CheckBox1_CheckedChanged1(object sender, EventArgs e)
        {
            if (CheckBox1.Checked)
            {
                Button5.Enabled = true;
            }
            else
                Button5.Enabled = false;
        }

        protected void Button5_Click1(object sender, EventArgs e)
        {
            Response.Redirect("Fixedtablerate.aspx");
        }

        protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
        {
            {
                Response.Redirect("Admin.aspx");
            }
        }
    }
}



