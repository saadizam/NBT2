<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Submit.aspx.cs" Inherits="WEB.Submit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            color: #00FF00;
        }
        .auto-style2 {
            color: #000099;
        }
        .auto-style3 {
            color: #0000CC;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="auto-style1">
    
        <strong>Thanks For Submitting<br />
        <br />
        Your Entries Are Saved<br />
        <br />
        Here you can view your Details</strong></div>
        <p>
            <span class="auto-style2">Name : </span>
            <asp:Label ID="Label1" runat="server" CssClass="auto-style2"></asp:Label>
        </p>
        <p>
            <span class="auto-style3">Phone Number :</span>
            <asp:Label ID="Label13" runat="server" CssClass="auto-style2"></asp:Label>
        </p>
        <p>
            <span class="auto-style2">Flight Number : </span>
            <asp:Label ID="Label2" runat="server" CssClass="auto-style2"></asp:Label>
        </p>
        <p>
            <span class="auto-style2">Email : </span>
            <asp:Label ID="Label3" runat="server" CssClass="auto-style2"></asp:Label>
        </p>
        <p>
            <span class="auto-style2">Account : </span>
            <asp:Label ID="Label4" runat="server" CssClass="auto-style2"></asp:Label>
        </p>
        <p>
            <span class="auto-style2">Booking Date : </span>
            <asp:Label ID="Label5" runat="server" CssClass="auto-style2"></asp:Label>
        </p>
        <p>
            <span class="auto-style2">Booking Time : </span>
            <asp:Label ID="Label6" runat="server" CssClass="auto-style2"></asp:Label>
        </p>
        <p>
            <span class="auto-style2">Source : </span>
            <asp:Label ID="Label7" runat="server" CssClass="auto-style2"></asp:Label>
        </p>
        <p>
            <span class="auto-style2">Destination : </span>
            <asp:Label ID="Label8" runat="server" CssClass="auto-style2"></asp:Label>
        </p>
        <p>
            <span class="auto-style2">Vehicle : </span>
            <asp:Label ID="Label9" runat="server" CssClass="auto-style2"></asp:Label>
        </p>
        <p>
            <span class="auto-style2">Passengers : </span>
            <asp:Label ID="Label10" runat="server" CssClass="auto-style2"></asp:Label>
        </p>
        <p>
            <span class="auto-style2">Comment: </span>
            <asp:Label ID="Label11" runat="server" CssClass="auto-style2"></asp:Label>
        </p>
        <p>
            <span class="auto-style2">Fare : </span>
            <asp:Label ID="Label12" runat="server" CssClass="auto-style2"></asp:Label>
        </p>
        <p>
            <a href="BookingPortal.aspx"> Back to Booking</a>
        </p>
        
    </form>
</body>
</html>
