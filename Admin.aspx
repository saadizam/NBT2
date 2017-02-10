<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="WEB.Admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            width: 74%;
            margin-right: 0px;
        }
        .fullWidth
       {
    width: 100%;
    }
        .auto-style4 {
            text-align: center;
            height: 30px;
        }
        .auto-style5 {
            text-align: center;
        }
        .auto-style6 {
            text-align: left;
        }
        </style>
</head>
<body id="PageBody" runat="server" style="height: 100%; width: 100%">
    <form id="form1" runat="server">
        <asp:Panel ID="Panel1" CssClass="fullWidth" runat="server" Height="100%" Width="100%">
            <table class="auto-style2" style="height: 100%; width: 100%">
                <tr>
                    <td class="auto-style5"><strong>
                        <asp:Panel ID="Panel2" runat="server">
                            <div class="auto-style6">
                                <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" NavigateUrl="Default.aspx">Home</asp:HyperLink>
                            </div>
                        </asp:Panel>
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        Welcome to Admin Page
                        <br />
                        Admin Page provides you to fix your fare calculations regarding to a specific offices<br /> Every offices have their specific credentials to login<br /> Please login to your appropriate office to login</strong></td>
                </tr>
                <tr>
                    <td class="auto-style5"><strong>Office Login</strong></td>
                </tr>
                <tr>
                    <td class="auto-style5"><strong>Username:</strong>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:TextBox ID="TextBox1" runat="server" BackColor="#CCFFCC" Width="172px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Please Enter Username" ForeColor="Red"></asp:RequiredFieldValidator>
                        <strong>
                        <br />
                        Password:</strong></td>
                </tr>
                <tr>
                    <td class="auto-style5"><strong>
                        <asp:TextBox ID="TextBox2" runat="server" BackColor="#CCFFCC" TextMode="Password" Width="172px"></asp:TextBox>
                        </strong></td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Please Enter Your Password" ForeColor="Red"></asp:RequiredFieldValidator>
                        <strong>
                        <br />
                        <asp:Button ID="Button1" runat="server" BackColor="White" Font-Bold="True" Height="38px" OnClick="Button1_Click" Text="Login" Width="163px" />
                        </strong></td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:Label ID="Label1" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
        </asp:Panel>
    </form>
</body>
</html>
