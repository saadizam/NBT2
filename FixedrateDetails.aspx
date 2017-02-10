<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FixedrateDetails.aspx.cs" Inherits="WEB.FixedrateDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 87%;
            height: 100%;
        }
        .auto-style8 {
            text-align: center;
            height: 175px;
        }
        .auto-style9 {
            height: 142px;
            text-align: center;
        }
        .auto-style11 {
            text-align: center;
        }
        .auto-style12 {
            text-align: center;
            height: 175px;
            width: 293px;
        }
        .auto-style13 {
            text-align: center;
            width: 293px;
        }
        .auto-style14 {
            text-align: center;
            width: 293px;
            height: 186px;
        }
        .auto-style15 {
            text-align: center;
            height: 186px;
        }
    </style>
</head>
<body margin-left: 120px" style="height: 689px; width: 100%" >
    <form id="form1"  runat="server">
        
                <asp:Panel ID="Panel1" runat="server">
            <asp:ImageButton ID="ImageButton4" runat="server" Height="32px" ImageUrl="~/signnout.png" Width="49px" OnClick="ImageButton4_Click" />
        </asp:Panel>
    

        <table class="auto-style1" align="center">
            <tr>
                <td class="auto-style9">
                    <p class="auto-style11">
                    <asp:ImageButton ID="ImageButton1" runat="server" Height="85px" ImageUrl="~/FixedRate.jpg" OnClick="ImageButton1_Click" Width="158px" />
                    </p>
                </td>
                <td class="auto-style9">
                    <h2>This is fixed rate which will guide you to manual fare based on placed and plot.</h2>
                </td>
            </tr>
            <tr>
                <td class="auto-style12">
                    <asp:ImageButton ID="ImageButton2" runat="server" Height="85px" ImageUrl="~/Fare.png" OnClick="ImageButton2_Click" Width="158px" />
                </td>
                <td class="auto-style8">
                    <h2>This is fixed rate which will guide you to fare based on mileage </h2>
                </td>
            </tr>
            <tr>
                <td class="auto-style14">
                    <asp:ImageButton ID="ImageButton3" runat="server" Height="68px" ImageUrl="~/ViewBooking.png" OnClick="ImageButton3_Click" Width="132px" />
                </td>
                <td class="auto-style15">
                    <h2>Edit&nbsp; Booking Details</h2>
                </td>
            </tr>
            <tr>
                <td class="auto-style13">
                    <asp:ImageButton ID="ImageButton5" runat="server" Height="105px" ImageUrl="~/searching_stick_figure_800_clr_1813.png" OnClick="ImageButton1_Click" Width="158px" PostBackUrl="~/BookingSearch.aspx" />
                </td>
                <td class="auto-style11">
                    <h2>Booking Search<br />
                    </h2>
                </td>

            </tr>
              <tr>
                <td class="auto-style13">
                    <asp:ImageButton ID="ImageButton6" runat="server" Height="105px" ImageUrl="~/user.png" OnClick="ImageButton1user__Click" Width="158px" PostBackUrl="~/Admin_users.aspx" />
                </td>
                <td class="auto-style11">
                    <h2>Users<br />
                    </h2>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
