<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="WEB.Signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <%-- <style>
    .login-page {
  width: 360px;
  padding: 8% 0 0;
  margin: auto;
}
.form {
  position: relative;
  z-index: 1;
  background: #FFFFFF;
  max-width: 360px;
  margin: 0 auto 100px;
  padding: 45px;
  text-align: center;
  box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0 rgba(0, 0, 0, 0.24);
}
.form input {
  font-family: "Roboto", sans-serif;
  outline: 0;
  background: #f2f2f2;
  width: 100%;
  border: 0;
  margin: 0 0 15px;
  padding: 15px;
  box-sizing: border-box;
  font-size: 14px;
}
.form button {
  font-family: "Roboto", sans-serif;
  text-transform: uppercase;
  outline: 0;
  background: #4CAF50;
  width: 100%;
  border: 0;
  padding: 15px;
  color: #FFFFFF;
  font-size: 14px;
  -webkit-transition: all 0.3 ease;
  transition: all 0.3 ease;
  cursor: pointer;
}
.form button:hover,.form button:active,.form button:focus {
  background: #43A047;
}
.form .message {
  margin: 15px 0 0;
  color: #b3b3b3;
  font-size: 12px;
}
.form .message a {
  color: #4CAF50;
  text-decoration: none;
}
.form .register-form {
  display: none;
  padding-left:20px;
}
.container {
  position: relative;
  z-index: 1;
  max-width: 300px;
  margin: 0 auto;
}
.container:before, .container:after {
  content: "";
  display: block;
  clear: both;
}
.container .info {
  margin: 50px auto;
  text-align: center;
}
.container .info h1 {
  margin: 0 0 15px;
  padding: 0;
  font-size: 36px;
  font-weight: 300;
  color: #1a1a1a;
}
.container .info span {
  color: #4d4d4d;
  font-size: 12px;
}
.container .info span a {
  color: #000000;
  text-decoration: none;
}
.container .info span .fa {
  color: #EF3B3A;
}
body {
    
  background: #76b852;  fallback for old browsers 
  background: -webkit-linear-gradient(right, #76b852, #8DC26F);
  background: -moz-linear-gradient(right, #76b852, #8DC26F);
  background: -o-linear-gradient(right, #76b852, #8DC26F);
  background: linear-gradient(to left, #76b852, #8DC26F);
  font-family: "Roboto", sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;      
}
h1 {
    display: block;
    font-size: 2em;
    -webkit-margin-before: 0.67em;
    -webkit-margin-after: 0.67em;
    -webkit-margin-start: 0px;
    -webkit-margin-end: 0px;
    font-weight: bold;
    font-family: Arial;
    font-size:30px;
   color : white;
}
.form .booking {
  margin: 15px 0 0;
  color: #b3b3b3;
  font-size: 12px;
}
.form .booking a {
  color: #4CAF50;
  text-decoration: none;
}


  

Inherited from body


        .auto-style1 {
            width: 106%;
        }
        .auto-style4 {
            width: 201px;
            height: 5px;
            text-align: right;
        }
        .auto-style5 {
            width: 172px;
            height: 5px;
        }
        .auto-style6 {
            height: 5px;
        }
        .auto-style7 {
            width: 201px;
            height: 37px;
            text-align: right;
        }
        .auto-style8 {
            width: 172px;
            height: 37px;
        }
        .auto-style9 {
            height: 37px;
        }
        .auto-style10 {
            width: 201px;
            height: 35px;
            text-align: right;
        }
        .auto-style11 {
            width: 172px;
            height: 35px;
        }
        .auto-style12 {
            height: 35px;
        }
        .auto-style13 {
            width: 201px;
            height: 36px;
            text-align: right;
        }
        .auto-style14 {
            width: 172px;
            height: 36px;
        }
        .auto-style15 {
            height: 36px;
        }
        .auto-style16 {
            position: relative;
            z-index: 1;
            background: #FFFFFF;
            max-width: 360px;
            margin: 0 auto 100px;
            padding: 45px;
            text-align: center;
            box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0 rgba(0, 0, 0, 0.24);
            left: -178px;
            top: 4px;
        }
--%>
    <%--</style>--%>
    <style type="text/css">
        .auto-style1 {
            width: 766px;
            height: 489px;
        }
        .auto-style2 {
            height: 30px;
        }
        .auto-style3 {
            width: 422px;
        }
        .auto-style4 {
            width: 845px;
            height: 536px;
        }
        .auto-style5 {
            width: 62px;
        }
        .auto-style6 {
            margin-left: 0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" class="auto-style4">
    <div>
        <h1> Buzybeez cab service</h1>
        <p> &nbsp;</p>
        <p> <strong>Create Account </strong></p>

         <div class="auto-style1">
        <asp:ScriptManager ID="SM1" runat="server">
        </asp:ScriptManager>
        <table style="border: solid 1px black; padding: 20px; position: relative; top: 50px;"
            align="center">
            <tr>
                <td>
                    Username :
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtusername" runat="server" Width="200px"></asp:TextBox>
                &nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtusername" ErrorMessage="Username is required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    Email ID :
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtEmailID" runat="server" Width="200px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtEmailID" ErrorMessage="Email is required" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;&nbsp;
                    <br />
&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmailID" ErrorMessage="Email must be in correct format" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>
                    Password :
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Width="200px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtPassword" ErrorMessage="Password is required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    Confirm Password :
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password" Width="200px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtConfirmPassword" ErrorMessage="Confirmation is must" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtConfirmPassword" ErrorMessage="Password should match" ForeColor="Red"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                
            <tr>
                <td colspan="2" align="center" class="auto-style2">
                    &nbsp;
                    <asp:Button ID="ButtonRegister" runat="server" CssClass="auto-style6" OnClick="ButtonRegister_Click" Text="Register" Width="112px" />
&nbsp;
                </td>
            </tr>
        </table>
    </div>
    
    
    
    </div>
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </form>
</body>
</html>
