<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="userdashboard.aspx.cs" Inherits="WEB.userdashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-decoration: underline;
            color: #0066FF;
            font-size: xx-large;
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="auto-style1">
    
        <strong>User Dashboard<br />
        <br />
        Welcome
        <asp:Label ID="Label1" runat="server"></asp:Label>
        <asp:Label ID="Label3" runat="server"></asp:Label>
        <br />
        <br />
        You can see your Jobs here</strong></div>
        <asp:Panel ID="Panel1" runat="server" Height="462px">
            Total number of jobs :
            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Search Booking by&nbsp;<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            &nbsp;<asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem Value="Select"></asp:ListItem>
                <asp:ListItem Value="jobref"></asp:ListItem>
                <asp:ListItem Value="From"></asp:ListItem>
                <asp:ListItem Value="to"></asp:ListItem>
                <asp:ListItem Value="Name"></asp:ListItem>
                <asp:ListItem Value="Telephone"></asp:ListItem>
                <asp:ListItem Value="Date"></asp:ListItem>
                <asp:ListItem Value="Email"></asp:ListItem>
                <asp:ListItem></asp:ListItem>
            </asp:DropDownList>
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Search" Width="84px" />
            <br />
            <br />
            &nbsp;<asp:GridView ID="GridView1" runat="server" Width="310px" >
    </asp:GridView> 
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Height="46px" OnClick="Button1_Click" Text="Book a Job" Width="164px" />
        </asp:Panel>
    </form>
</body>
</html>
