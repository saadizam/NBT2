<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ViewBooking.aspx.cs" Inherits="WEB.ViewBooking" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style3 {
            text-align: center;
            margin-left: 40px;
        }
        .auto-style4 {
            width: 100%;
            height: 388px;
        }
        .auto-style5 {
            width: 1171px;
            height: 82px;
        }
        .auto-style7 {
            height: 105px;
            text-align: center;
        }
        .displaynon
        {
            display:none;
        }
        .auto-style8 {
            width: 100%;
            height: 50px;
        }
        .auto-style9 {
            font-weight: bold;
            font-style: italic;
        }
    </style>
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
    <script>
        $(document).ready(function () {
           
         //   alert()
            $("#GridView1").find("tr").each(function (i) {
               
                var $this = $(this);
                $this.children("td").each(function () {
                    $this; // parent li
                    this; // child li
                    if ($(this).text() == "Pending") {
                        var ii = i+1;
                        $("tr:eq(" + "'" + ii + "'" + ")").css("background", "#999966");
                        //alert(i);
                    }

                    if ($(this).text() == "CONFIRM") {
                        var ii = i+1;
                        $("tr:eq(" + "'" + ii + "'" + ")").css("background", "#99ff66");
                    }

                    if ($(this).text() == "Declined") {
                       var ii = i+1;
                       $("tr:eq(" + "'" + ii + "'" + ")").css("background", "Red");
                       // alert(ii);
                    }
                })
             
               
            })
                //  ..... and so on
            });
   
            </script>
</head>
<body>
    <form id="form1" runat="server">
    <div class="auto-style3">
    <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" NavigateUrl="FixedrateDetails.aspx">BACK</asp:HyperLink>
        <br />
        <br />
        <h1><em>Norbiton Booking </em></h1>
        <table class="auto-style8">
            <tr>
                <td class="auto-style7">How to edit:<br />
                    1)Click EDIT to do some changes in any job.<br />
                    2)Click UPDATE to update that job.<br />
                    3)SELECT the edited job to mail.<br />
                    4)Click on Mail to Office button to send changes information to office.</td>
            </tr>
        </table>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" OnRowCommand="GridView1_OnRowCommand">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
               
                     <asp:BoundField DataField="id" HtmlEncode="False" DataFormatString="<a  href='ViewDetail.aspx?code={0}'>ViewDetail</a>" />
           <%--         <asp:HyperLinkField DataNavigateUrlFields="id" 
DataNavigateUrlFormatString="/ViewBooking.aspx?id={0}"
                            DataTextField="custname" HeaderText="ViewDetail" />--%>
              <%--  <asp:ButtonField DataTextField="id" HeaderText="Stock" 
         ButtonType="button" DataTextFormatString="{0} Items" 
         CommandName="Stock" />--%>
               
                          <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                  <asp:TemplateField ShowHeader="False">
            <ItemTemplate>
                <asp:Button ID="Button2" runat="server" CausesValidation="false" CommandName="SendMail"
                    Text="SendMail" CommandArgument='<%# Container.DataItemIndex %>'  />
            </ItemTemplate>
        </asp:TemplateField>
                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="account" HeaderText="account" SortExpression="account" />
                <asp:BoundField DataField="creditcard" HeaderText="creditcard" SortExpression="creditcard" />
                <asp:BoundField DataField="custname" HeaderText="custname" SortExpression="custname" />
                <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
                <asp:BoundField DataField="fare" HeaderText="fare" SortExpression="fare" />
                <asp:BoundField DataField="flightno" HeaderText="flightno" SortExpression="flightno" />
                <asp:BoundField DataField="from" HeaderText="from" SortExpression="from" />
                <asp:BoundField DataField="jobref" HeaderText="jobref" SortExpression="jobref" />
                <asp:BoundField DataField="office" HeaderText="office" SortExpression="office" />
                <asp:BoundField DataField="to" HeaderText="to" SortExpression="to" />
                <asp:BoundField DataField="Via1address" HeaderText="Via1address" SortExpression="Via1address" />
                <asp:BoundField DataField="Passengers" HeaderText="Passengers" SortExpression="Passengers" />
                <asp:BoundField DataField="commentt" HeaderText="commentt" SortExpression="commentt" />
                <asp:BoundField DataField="telephone" HeaderText="telephone" SortExpression="telephone" />
                <asp:BoundField DataField="time" HeaderText="time" SortExpression="time" />
                <asp:BoundField DataField="jobmileage" HeaderText="jobmileage" SortExpression="jobmileage" />
                <asp:BoundField DataField="from_info" HeaderText="from_info" SortExpression="from_info" />
                <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BuzybeezWebConnectionString %>" DeleteCommand="DELETE FROM [BookingPortalNBTT] WHERE [id] = @id" InsertCommand="INSERT INTO [BookingPortalNBTT] ([account], [creditcard], [custname], [date], [fare], [flightno], [from], [jobref], [office], [to], [Via1address], [Passengers], [commentt], [telephone], [time], [jobmileage], [from_info]) VALUES (@account, @creditcard, @custname, @date, @fare, @flightno, @from, @jobref, @office, @to, @Via1address, @Passengers, @commentt, @telephone, @time, @jobmileage, @from_info)" SelectCommand="SELECT [id], [account], [creditcard], [custname], [date], [fare], [flightno], [from], [jobref], [office], [to], [Via1address], [Passengers], [commentt], [telephone], [time], [jobmileage], [from_info], [Status] FROM [BookingPortalNBTT] ORDER BY [id] DESC" UpdateCommand="UPDATE [BookingPortalNBTT] SET [account] = @account, [creditcard] = @creditcard, [custname] = @custname, [date] = @date, [fare] = @fare, [flightno] = @flightno, [from] = @from, [jobref] = @jobref, [office] = @office, [to] = @to, [Via1address] = @Via1address, [Passengers] = @Passengers, [commentt] = @commentt, [telephone] = @telephone, [time] = @time, [jobmileage] = @jobmileage, [from_info] = @from_info WHERE [id] = @id">
            <DeleteParameters>
                <asp:Parameter Name="id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="account" Type="String" />
                <asp:Parameter Name="creditcard" Type="String" />
                <asp:Parameter Name="custname" Type="String" />
                <asp:Parameter Name="date" Type="String" />
                <asp:Parameter Name="fare" Type="Double" />
                <asp:Parameter Name="flightno" Type="String" />
                <asp:Parameter Name="from" Type="String" />
                <asp:Parameter Name="jobref" Type="String" />
                <asp:Parameter Name="office" Type="String" />
                <asp:Parameter Name="to" Type="String" />
                <asp:Parameter Name="Via1address" Type="String" />
                <asp:Parameter Name="Passengers" Type="Int32" />
                <asp:Parameter Name="commentt" Type="String" />
                <asp:Parameter Name="telephone" Type="String" />
                <asp:Parameter Name="time" Type="String" />
                <asp:Parameter Name="jobmileage" Type="Double" />
                <asp:Parameter Name="from_info" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="account" Type="String" />
                <asp:Parameter Name="creditcard" Type="String" />
                <asp:Parameter Name="custname" Type="String" />
                <asp:Parameter Name="date" Type="String" />
                <asp:Parameter Name="fare" Type="Double" />
                <asp:Parameter Name="flightno" Type="String" />
                <asp:Parameter Name="from" Type="String" />
                <asp:Parameter Name="jobref" Type="String" />
                <asp:Parameter Name="office" Type="String" />
                <asp:Parameter Name="to" Type="String" />
                <asp:Parameter Name="Via1address" Type="String" />
                <asp:Parameter Name="Passengers" Type="Int32" />
                <asp:Parameter Name="commentt" Type="String" />
                <asp:Parameter Name="telephone" Type="String" />
                <asp:Parameter Name="time" Type="String" />
                <asp:Parameter Name="jobmileage" Type="Double" />
                <asp:Parameter Name="from_info" Type="String" />
                <asp:Parameter Name="id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
    </div>
        <table class="auto-style4">
            <tr>
                <td class="auto-style7">
                    <strong><em>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Mail to Office" Height="46px" Width="178px" CssClass="auto-style9" />
                    </em></strong>
                </td>
            </tr>
            <tr>
                <td class="">
        <p class="auto-style5">
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
            <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
            <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
            <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
            <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
            <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
            <asp:TextBox ID="TextBox13" runat="server"></asp:TextBox>
            <asp:TextBox ID="TextBox14" runat="server"></asp:TextBox>
            <asp:TextBox ID="TextBox15" runat="server"></asp:TextBox>
            <asp:TextBox ID="TextBox16" runat="server"></asp:TextBox>
            <asp:TextBox ID="TextBox17" runat="server"></asp:TextBox>
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </p>
                </td>
            </tr>
        </table>
        <p>
            &nbsp;</p>
    </form>
</body>
</html>
