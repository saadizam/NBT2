<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Guide.aspx.cs" Inherits="WEB.Guide" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            font-size: xx-large;
        }
        .auto-style3 {
            text-align: center;
            font-size: large;
        }
        .auto-style4 {
            font-size: x-large;
        }
        .auto-style5 {
            text-align: justify;
        }
    </style>
</head>
<body id="PageBody" runat="server" style="height: 64px">
    <form id="form1" runat="server">
    <div class="auto-style1">
    
        <strong><span class="auto-style2">Booking Manual </span>
        <br />
        <br />
        <span class="auto-style4">How to Use?</span><br class="auto-style2" />
        </strong>
    
    </div>
        <div class="auto-style3">
            <strong>Points to remember While Booking:</strong></div>
        <br />
        <asp:Panel ID="Panel1" runat="server" Height="567px">
            <div class="auto-style5">
                &nbsp;
                <br />
                1) By putting Source and Destination , you will be able to see your&nbsp; route on map and its fare by clicking fare button based on account and Vehicle selected.<br />
                <br />
                2) Make sure you are putting correct email address and phone number for your own convinience.<br />
                <br />
                3) We have included some features like Locate me (You can use it by pressing <strong>END</strong> button on any source or destination field and check your location to put in) . It will give you ease to find your address through maps).<br />
                <br />
                4) Another feature is Airport selection&nbsp; (You can use it by pressing <strong>INSERT</strong> button on any source or destination field and select your airport which you want to go)<br />
                <br />
                5) For Via&#39;s you have to Add one button to enter your via and press confirm button to select it . You can remove it if u want to.<br />
                <br />
                6) Booking date and Time is necessary for you and for us to facilitate you.<br />
                <br />
                7) Fare is depending on your Source, Destination and Via&#39;s distance , account and your vehicle selected .
                <br />
                <br />
                The <strong>Necessary</strong> fields are:<br /> From, To, Name, Email, Phone No, Booking, Time, No of Passengers,<br /> Source (From) and Destionation (To) are necessary fields whereas Vias are not mandatory . It depends on your need.<br />
                <br />
                The <strong>Optional</strong> fields are:<br /> Flight no, Comment.<br />
                <br />
                The <strong>Conditional</strong> fields are:<br /> Vehicle and Account. Fare will generate with respect to Vehicle and Account.<br />
                <br />
                <br />
                <br />
                <br />
            </div>
        </asp:Panel>
    </form>
</body>
</html>
