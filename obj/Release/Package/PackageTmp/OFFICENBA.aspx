<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OFFICENBA.aspx.cs" Inherits="WEB.OFFICENBA" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            font-family: "Times New Roman";
            font-size: medium;
            color: rgb(255, 102, 102);
            letter-spacing: normal;
        }
        .auto-style3 {
            color: #FF6666;
        }
        </style>
</head>
<body style="height: 393px; margin-bottom: 0px">
    <form id="form1" runat="server">
    <div class="auto-style1">
    
        <p class="auto-style1" style="text-align: center; height: 26px; color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: medium; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px;">
            <strong>Rates</strong></p>
        <p class="auto-style1" style="text-align: center; height: 26px; color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: medium; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px;">
            <strong>Office Name : New Barnet</strong></p>
        <p class="auto-style1" style="text-align: center; height: 26px; color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: medium; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px;">
            <strong>Here you are allowed to fixed rate based on mileage</strong></p>
        <p class="auto-style1" style="text-align: center; height: 26px; color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: medium; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px;">
            <strong>Select Account :
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="Name" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
            </asp:DropDownList>
            </strong>
        </p>
        <p class="auto-style1" style="text-align: center; height: 26px; color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: medium; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px;">
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BuzybeezWebConnectionString %>" SelectCommand="SELECT [Name] FROM [Accounts]"></asp:SqlDataSource>
        </p>
        <p class="auto-style1" style="text-align: center; height: 26px; color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: medium; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px;">
            <strong>Select Vehicle :
            <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="Name" DataValueField="Name" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
            </asp:DropDownList>
            </strong>
        </p>
        <p class="auto-style1" style="text-align: center; height: 26px; color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: medium; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px;">
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:BuzybeezWebConnectionString %>" SelectCommand="SELECT [Name] FROM [Vehicle]"></asp:SqlDataSource>
        </p>
        <p class="auto-style2" style="width: 470px; margin-left: 303px; color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: medium; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px;">
            <span class="auto-style3" style="color: rgb(255, 102, 102);"><strong>&nbsp;<span class="Apple-converted-space">&nbsp;</span><em>Selected Account :<span id="Label1"></span><span class="Apple-converted-space">&nbsp;</span>
            <asp:Label ID="Label3" runat="server"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp; Selected Vehicle :<span id="Label2">
            <asp:Label ID="Label4" runat="server"></asp:Label>
            </span></em></strong></span>
        </p>
        <p class="auto-style4" style="width: 240px; color: rgb(255, 102, 102); margin-left: 408px; font-family: &quot;Times New Roman&quot;; font-size: medium; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px;">
            <strong dir="rtl">Fare Calculation based on Mileage</strong></p>
    
    </div>
        <asp:Panel ID="Panel1" runat="server" Height="414px">
            Account Details :<br />
            <br />
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" CellPadding="4" DataKeyNames="No" DataSourceID="SqlDataSource3" EmptyDataText="There are no data records to display." ForeColor="#333333" GridLines="None" Width="184px">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:BoundField DataField="No" HeaderText="No" ReadOnly="True" SortExpression="No" />
                    <asp:BoundField DataField="Unit" HeaderText="Unit" SortExpression="Unit" />
                    <asp:BoundField DataField="Cost" HeaderText="Cost" SortExpression="Cost" />
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
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:BuzybeezWebConnectionString %>" DeleteCommand="DELETE FROM [NBAAccfare] WHERE [No] = @No" InsertCommand="INSERT INTO [NBAAccfare] ([Unit], [Cost]) VALUES (@Unit, @Cost)" SelectCommand="SELECT [No], [Unit], [Cost] FROM [NBAAccfare]" UpdateCommand="UPDATE [NBAAccfare] SET [Unit] = @Unit, [Cost] = @Cost WHERE [No] = @No">
                <DeleteParameters>
                    <asp:Parameter Name="No" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Unit" Type="Double" />
                    <asp:Parameter Name="Cost" Type="Double" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Unit" Type="Double" />
                    <asp:Parameter Name="Cost" Type="Double" />
                    <asp:Parameter Name="No" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
            &nbsp;Unit :
            <asp:TextBox ID="TextBox1" runat="server" Width="74px"></asp:TextBox>
            &nbsp; Cost :
            <asp:TextBox ID="TextBox2" runat="server" Width="84px"></asp:TextBox>
            <br />
            <br />
            Add :&nbsp;
            <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="Add" />
            <br />
            <br />
            Round Type :
            <asp:DropDownList ID="DropDownList6" runat="server" AutoPostBack="True">
                <asp:ListItem Selected="True">Price</asp:ListItem>
                <asp:ListItem>Distance</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            &nbsp;Round :
            <asp:DropDownList ID="DropDownList4" runat="server" AutoPostBack="True">
                <asp:ListItem Selected="True">UP</asp:ListItem>
                <asp:ListItem>DOWN</asp:ListItem>
            </asp:DropDownList>
            &nbsp; To Nearest :
            <asp:TextBox ID="TextBox5" runat="server" Width="74px"></asp:TextBox>
            &nbsp; Minimum Price
            <asp:TextBox ID="TextBox6" runat="server" Width="74px"></asp:TextBox>
            &nbsp; Extra Drop :<asp:TextBox ID="TextBox7" runat="server" Width="74px"></asp:TextBox>
            &nbsp;V.A.T Rate :
            <asp:DropDownList ID="DropDownList5" runat="server" AutoPostBack="True">
                <asp:ListItem Selected="True">ZERO</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            <asp:Panel ID="Panel2" runat="server" Height="667px">
                Driver&#39;s Details :<br />
                <br />
                <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AutoGenerateColumns="False" AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" CellPadding="4" DataKeyNames="No" DataSourceID="SqlDataSource4" EmptyDataText="There are no data records to display." ForeColor="#333333" GridLines="None" Width="182px">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="No" HeaderText="No" ReadOnly="True" SortExpression="No" />
                        <asp:BoundField DataField="Unit" HeaderText="Unit" SortExpression="Unit" />
                        <asp:BoundField DataField="Cost" HeaderText="Cost" SortExpression="Cost" />
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
                <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:BuzybeezWebConnectionString %>" DeleteCommand="DELETE FROM [NBAAccfare] WHERE [No] = @No" InsertCommand="INSERT INTO [NBAAccfare] ([Unit], [Cost]) VALUES (@Unit, @Cost)" SelectCommand="SELECT [No], [Unit], [Cost] FROM [NBAAccfare]" UpdateCommand="UPDATE [NBAAccfare] SET [Unit] = @Unit, [Cost] = @Cost WHERE [No] = @No">
                    <DeleteParameters>
                        <asp:Parameter Name="No" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Unit" Type="Double" />
                        <asp:Parameter Name="Cost" Type="Double" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Unit" Type="Double" />
                        <asp:Parameter Name="Cost" Type="Double" />
                        <asp:Parameter Name="No" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <br />
                &nbsp;Unit :
                <asp:TextBox ID="TextBox8" runat="server" Width="74px"></asp:TextBox>
                &nbsp; Cost :
                <asp:TextBox ID="TextBox9" runat="server" Width="84px"></asp:TextBox>
                <br />
                <br />
                Add :&nbsp;
                <asp:Button ID="Button7" runat="server" OnClick="Button7_Click" Text="Add" />
                <br />
                <br />
                Round Type :
                <asp:DropDownList ID="DropDownList7" runat="server" AutoPostBack="True">
                    <asp:ListItem Selected="True">Price</asp:ListItem>
                    <asp:ListItem>Distance</asp:ListItem>
                </asp:DropDownList>
                &nbsp; Percentage :
                <asp:TextBox ID="TextBox13" runat="server" Width="74px"></asp:TextBox>
&nbsp;<br />
                <br />
                &nbsp;Round :
                <asp:DropDownList ID="DropDownList8" runat="server" AutoPostBack="True">
                    <asp:ListItem Selected="True">UP</asp:ListItem>
                    <asp:ListItem>DOWN</asp:ListItem>
                </asp:DropDownList>
                &nbsp; To Nearest :
                <asp:TextBox ID="TextBox10" runat="server" Width="74px"></asp:TextBox>
                &nbsp; Minimum Price
                <asp:TextBox ID="TextBox11" runat="server" Width="74px"></asp:TextBox>
                &nbsp; Extra Drop :<asp:TextBox ID="TextBox12" runat="server" Width="74px"></asp:TextBox>
                &nbsp;V.A.T Rate :
                <asp:DropDownList ID="DropDownList9" runat="server" AutoPostBack="True">
                    <asp:ListItem Selected="True">ZERO</asp:ListItem>
                </asp:DropDownList>
                <br />
                <br />
                <asp:Button ID="Button3" runat="server" Text="Save" Width="91px" />
                &nbsp;</asp:Panel>
        </asp:Panel>
    </form>
</body>
</html>
