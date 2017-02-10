<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="WEB.Admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 400px;
            text-align: center;
            width: 930px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="auto-style1">
    
        <br />
        <br />
        <br />
        <strong>Welcome to Admin Page
        <br />
        Admin Page provides you to fix your fare calculations regarding to a specific offices<br />
        Every offices have their specific credentials to login<br />
        Please login to your appropriate office to login<br />
        <br />
        <br />
        Office Login<br />
        <br />
        Username:</strong>
        <br />
&nbsp;<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        <strong>Password:<br />
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <br />
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Login" />
        <br />
        <br />
        </strong>
        <br />
        <br />
    
    </div>
        <asp:Label ID="Label1" runat="server"></asp:Label>
    </form>
</body>
</html>
