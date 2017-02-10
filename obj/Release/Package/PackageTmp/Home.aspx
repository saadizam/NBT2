<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs"   Inherits="WEB.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

 
    
            
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 188px;
        }
        .auto-style6 {
            width: 96px;
        }
        .auto-style7 {
            height: 101px;
        }
        .auto-style8 {
            font-weight: bold;
        }
        .auto-style9 {
            text-align: right;
            width: 171px;
        }
        .auto-style10 {
            width: 112px;
        }
        .auto-style11 {
            width: 171px;
        }
        .auto-style13 {
            text-align: center;
            margin-left: 120px;
        }
        .auto-style14 {
            width: 199px;
        }
        .auto-style15 {
            width: 171px;
            text-align: left;
        }
        .auto-style16 {
            text-align: justify;
        }
        .auto-style17 {
            text-align: right;
        }
    </style>

 
    
            
</head>
<body id="PageBody"  style="background-image:url();" runat="server" >

   
     <form id="form1" runat="server">
         <div class="login-page">
                         <p class="auto-style17">
                             <a href="Admin.aspx">Admin Panel</a></p>
        <br />
        <br />
   
         </div>
      &nbsp;
         <p class="booking">&nbsp;</p>

        
     
  </div>
        </div>
      
        
         <div class="auto-style13">
      
        
         <asp:Panel ID="Panel1" runat="server" Height="444px" Width="737px">
             <table class="auto-style1">
                 <tr>
                     <td class="auto-style7" colspan="5">
                         <h1 class="auto-style16"><em>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Buzybeez Cab Service </em></h1>
                     </td>
                 </tr>
                 <tr>
                     <td class="auto-style10">&nbsp;</td>
                     <td class="auto-style6">&nbsp;</td>
                     <td class="auto-style14">&nbsp;</td>
                     <td class="auto-style11">&nbsp;</td>
                     <td>&nbsp;</td>
                 </tr>
                 <tr>
                     <td class="auto-style10">&nbsp;</td>
                     <td class="auto-style6"><strong>UserName</strong></td>
                     <td class="auto-style14">
                         <asp:TextBox ID="TextBox1" runat="server" Width="143px"></asp:TextBox>
                     </td>
                     <td class="auto-style15">
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Username is required" ForeColor="#006600"></asp:RequiredFieldValidator>
                     </td>
                     <td>&nbsp;</td>
                 </tr>
                 <tr>
                     <td class="auto-style10">&nbsp;</td>
                     <td class="auto-style6"><strong>Password </strong></td>
                     <td class="auto-style14">
                         <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Width="143px"></asp:TextBox>
                     </td>
                     <td class="auto-style15">
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Password is required" ForeColor="#006600"></asp:RequiredFieldValidator>
                     </td>
                     <td>&nbsp;</td>
                 </tr>
                 <tr>
                     <td class="auto-style10">&nbsp;</td>
                     <td class="auto-style6">&nbsp;</td>
                     <td class="auto-style14">
                         <asp:CheckBox ID="CheckBox1" runat="server" />
                         &nbsp;Remember Me</td>
                     <td class="auto-style11">&nbsp;</td>
                     <td>&nbsp;</td>
                 </tr>
                 <tr>
                     <td class="auto-style10">&nbsp;</td>
                     <td class="auto-style6">&nbsp;</td>
                     <td class="auto-style14">
                         <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                     </td>
                     <td class="auto-style11">&nbsp;</td>
                     <td>&nbsp;</td>
                 </tr>
                 <tr>
                     <td class="auto-style10">&nbsp;</td>
                     <td class="auto-style6">&nbsp;</td>
                     <td class="auto-style14"><strong>
                         <asp:Button ID="LoginButton" runat="server" CssClass="auto-style8" OnClick="LoginButton_Click" Text="Login" Width="148px" />
                         </strong></td>
                     <td class="auto-style11">&nbsp;</td>
                     <td>&nbsp;</td>
                 </tr>
                 <tr>
                     <td class="auto-style10">&nbsp;</td>
                     <td class="auto-style6">&nbsp;</td>
                     <td class="auto-style14">
                         <p class="message">
                             <a href="Signup.aspx">Create an account</a></p>
                     </td>
                     <td class="auto-style11">&nbsp;</td>
                     <td>&nbsp;</td>
                 </tr>
                 <tr>
                     <td class="auto-style10">&nbsp;</td>
                     <td class="auto-style6">&nbsp;</td>
                     <td class="auto-style14">
                         <p class="booking">
                             <a href="BookingPortal.aspx">Online Booking</a></p>
                     </td>
                     <td class="auto-style9">
                         &nbsp;</td>
                     <td>&nbsp;</td>
                 </tr>
                 <tr>
                     <td class="auto-style10">&nbsp;</td>
                     <td class="auto-style6">&nbsp;</td>
                     <td class="auto-style14">&nbsp;</td>
                     <td class="auto-style11">&nbsp;</td>
                     <td>&nbsp;</td>
                 </tr>
             </table>
         </asp:Panel>
         </div>
         <a href="Signup.aspx"><asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BuzybeezWebConnectionString %>" SelectCommand="SELECT * FROM [tblaccount]"></asp:SqlDataSource>
          </a>

        
     
     </form>
          
</body>
   
</html>
