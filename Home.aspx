<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs"   Inherits="WEB.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

 
    
            
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 268px;
        }
        .auto-style8 {
            font-weight: bold;
        }
        .auto-style13 {
            text-align: center;
            margin-left: 120px;
        }
        .auto-style14 {
            width: 199px;
            text-align: center;
        }
        .auto-style23 {
            text-align: left;
        }
        .auto-style24 {
            font-size: xx-large;
        }
        .auto-style25 {
            width: 136px;
            text-align: center;
        }
        .auto-style27 {
            width: 138px;
        }
        .auto-style29 {
            text-align: center;
        }
        .auto-style30 {
            height: 17px;
            text-align: center;
        }
        .auto-style39 {
            height: 51px;
            text-align: center;
        }
        .auto-style41 {
            width: 133px;
        }
        .auto-style42 {
            width: 133px;
            text-align: center;
        }
        .auto-style44 {
            width: 100%;
        }
        .auto-style45 {
            text-align: right;
        }
        .background-image {
          background-size: cover;
            background-attachment:fixed;
            background-repeat:no-repeat;
        position: fixed;
        left: 0;
        right: 0;
        z-index: 1;
  display: block;
  background-image:url('BMW.jpg');
 
}
    </style>

 
    
            
</head>
<body id="PageBody" style="height: 100%; width: 100%" runat="server" class="background-image">

   
     <form id="form1" style="height: 100%; width: 100%" runat="server">
         <div class="login-page">
                         <div class="auto-style23">
      
        
         <asp:Panel ID="Panel1" runat="server" style="height: 100%; width: 100%" Height="565px" Width="1100px">
             <table class="auto-style1" style="height: 100%; width: 100%">
                 <tr>
                     <td colspan="5">
                         <h1 class="auto-style23"><em> 
                             <table class="auto-style44">
                                 <tr>
                                     <td class="auto-style45"><em><span class="auto-style24">
                                         <asp:ImageButton ID="AdminPanelBtn" runat="server" CausesValidation="false" Height="42px" ImageUrl="~/adminpanel.png" OnClick="AdminPanelBtn_Click" Width="153px" />
                                         </span></em></td>
                                 </tr>
                                 <tr>
                                     <td class="auto-style45"><em><span class="auto-style24">
                                         <asp:ImageButton ID="OpenAccountbtn" runat="server" CausesValidation="false" Height="46px" ImageUrl="~/Open-an-Account.png" OnClick="OpenAccountbtn_Click" Width="137px" />
                                         </span></em></td>
                                 </tr>
                             </table>
                             </em></h1>
                         <h1 class="auto-style29"><em><span class="auto-style24" style="color: #FFFFFF">Norbiton Cab Service </span></em></h1>
                     </td>
                 </tr>
                 <tr>
                     <td class="auto-style42">&nbsp;</td>
                     <td class="auto-style25">&nbsp;</td>
                     <td class="auto-style14">&nbsp;</td>
                     <td class="auto-style27">&nbsp;</td>
                     <td>&nbsp;</td>
                 </tr>
                 <tr>
                     <td class="auto-style39" colspan="5"><strong>Email&nbsp;
                         <br />
                         </strong>
                         <asp:TextBox ID="TextBox1" runat="server" Width="163px"></asp:TextBox>
                         &nbsp;&nbsp;
                         <br />
                         &nbsp;
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Email is required" ForeColor="Red"></asp:RequiredFieldValidator>
                     </td>
                 </tr>
                 <tr>
                     <td class="auto-style29" colspan="5">
                         <asp:Panel ID="Panel2" runat="server" Width="100%" Height="100%" DefaultButton="LoginButton">
                             <strong>Password&nbsp;
                             <br />
                             &nbsp;</strong><asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Width="163px"></asp:TextBox>
                             &nbsp;&nbsp;
                             <br />
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Password is required" ForeColor="Red"></asp:RequiredFieldValidator>
                             <br />
                             <asp:CheckBox ID="CheckBox1" runat="server" />
                             Remember Me<br />
                             <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
                             <strong>
                             <br />
                             <asp:Button ID="LoginButton" runat="server" CssClass="auto-style8" Height="38px" OnClick="LoginButton_Click" Text="Login" Width="163px" />
                             </strong>
                         </asp:Panel>
                         &nbsp;</td>
                 </tr>
                 <tr>
                     <td class="auto-style29" colspan="5">
                         <p class="auto-style30">
                             <asp:ImageButton ID="OnlineBookingbtn" runat="server" CausesValidation="false" Height="58px" ImageUrl="~/book_online.png" OnClick="OnlineBookingbtn_Click" Width="176px" />
                         </p>
                     </td>
                 </tr>
                 <tr>
                     <td class="auto-style41">
                         &nbsp;</td>
                     <td class="auto-style25">&nbsp;</td>
                     <td class="auto-style14">&nbsp;</td>
                     <td class="auto-style27">&nbsp;</td>
                     <td>&nbsp;</td>
                 </tr>
             </table>
         </asp:Panel>
                         </div>
        <br />
        <br />
   
         </div>
      &nbsp;
         <p class="booking">&nbsp;</p>

        
     
  </div>
        </div>
      
        
         <div class="auto-style13">
      
        
         </div>
         <a href="Signup.aspx"><asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BuzybeezWebConnectionString %>" SelectCommand="SELECT * FROM [tblaccount]"></asp:SqlDataSource>
          </a>

        
     
     </form>
          
</body>
   
</html>
