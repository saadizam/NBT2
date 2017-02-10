<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Submit.aspx.cs" Inherits="WEB.Submit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            color:#249f1a ;
        }
        .auto-style2 {
            color: #000099;
        }
        .auto-style3 {
            color: #0000CC;
        }
        .auto-style4 {
            width: 100%;
            float: left;
            height: 402px;
        }
        .auto-style13 {
            width: 214px;
        }
        .auto-style14 {
            width: 278px;
        }
        .auto-style15 {
            width: 256px;
        }
        .auto-style16 {
            width: 278px;
            text-align: left;
        }
        .auto-style17 {
            height: 933px;
            width: 100%;
        }
        .auto-style18 {
            width: 214px;
            height: 94px;
        }
        .auto-style19 {
            height: 94px;
        }
        .auto-style20 {
            height: 49px;
        }
        .auto-style21 {
            width: 214px;
            height: 4px;
        }
        .auto-style22 {
            width: 206px;
            text-align: center;
            height: 4px;
        }
        .auto-style23 {
            width: 278px;
            text-align: left;
            height: 4px;
        }
        .auto-style24 {
            height: 4px;
        }
        .auto-style38 {
            width: 206px;
            text-align: center;
        }
        .auto-style39 {
            width: 214px;
            height: 29px;
        }
        .auto-style40 {
            width: 206px;
            text-align: center;
            height: 29px;
        }
        .auto-style41 {
            width: 278px;
            text-align: left;
            height: 29px;
        }
        .auto-style42 {
            height: 29px;
        }
        .auto-style43 {
            font-size: x-large;
        }
        .auto-style45 {
            width: 100%;
        }
        .auto-style50 {
            width: 93px;
            height: 18px;
        }
        .auto-style51 {
            width: 220px;
            height: 18px;
        }
        .auto-style52 {
            height: 18px;
        }
        .auto-style53 {
            width: 93px;
            height: 1px;
        }
        .auto-style54 {
            width: 220px;
            height: 1px;
        }
        .auto-style55 {
            height: 1px;
        }
        .auto-style46 {
            width: 93px;
        }
        .auto-style49 {
            width: 220px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server" class="auto-style17">
        <asp:Panel ID="Panel1" runat="server" Height="103%" Width="100%">
            <table class="auto-style4">
                <tr>
                    <td class="auto-style18">
                        <p class="auto-style15">
                            <a href="BookingPortal.aspx">Back to Booking</a>
                        </p>
                    </td>
                    <td colspan="2" class="auto-style19">
                        <div class="auto-style1">
                            <strong>
                            <table class="auto-style45">
                                <tr>
                                    <td class="auto-style50"><strong><strong style="color: #FF0000; font-size: medium;">Contact (02085465555)</strong></strong></td>
                                    <td class="auto-style51"><strong>Thanks For Submitting
                                        <br />
                                        </strong></td>
                                    <td class="auto-style52"></td>
                                </tr>
                                <tr>
                                    <td class="auto-style53"></td>
                                    <td class="auto-style54"><strong>Your Entry Is Saved<br /> </strong></td>
                                    <td class="auto-style55"></td>
                                </tr>
                                <tr>
                                    <td class="auto-style46">&nbsp;</td>
                                    <td class="auto-style49"><strong>Here you can view your Details</strong></td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td colspan="3"><strong><span class="auto-style43">Please note your Job Ref for any query
                                        <asp:Label ID="Label22" runat="server" CssClass="auto-style2">null</asp:Label>
                                        </span></strong></td>
                                </tr>
                            </table>
                            </strong></div>
                    </td>
                    <td class="auto-style19"></td>
                </tr>
                <tr>
                    <td class="auto-style21"></td>
                    <td class="auto-style22" style="border: thin double #000080; color: #000000; background-color: #66FF99;"><span class="auto-style2">Job Ref: </span></td>
                    <td class="auto-style23" style="border: thin double #000080; color: #000000; background-color: #66FF99;">
                        <asp:Label ID="Label14" runat="server" CssClass="auto-style2">null</asp:Label>
                    </td>
                    <td class="auto-style24"></td>
                </tr>
                <tr>
                    <td class="auto-style13"></td>
                    <td class="auto-style38" style="border: thin double #000080; color: #000000;"><span class="auto-style2">Name : </span></td>
                    <td class="auto-style16" style="border: thin double #000080; color: #000000;">
                        <asp:Label ID="Label1" runat="server" CssClass="auto-style2">null</asp:Label>
                    </td>
                    <td></td>
                </tr>
                <tr>
                    <td class="auto-style13"></td>
                    <td class="auto-style38" style="border: thin double #000080; color: #000000;"><span class="auto-style3">Phone Number :</span>&nbsp;</td>
                    <td class="auto-style16" style="border: thin double #000080; color: #000000;">
                        <asp:Label ID="Label13" runat="server" CssClass="auto-style2">null</asp:Label>
                    </td>
                    <td></td>
                </tr>
                <tr>
                    <td class="auto-style13"></td>
                    <td class="auto-style38" style="border: thin double #000080; color: #000000;"><span class="auto-style2">Flight Number : </span></td>
                    <td class="auto-style16" style="border: thin double #000080; color: #000000;">
                        <asp:Label ID="Label2" runat="server" CssClass="auto-style2">null</asp:Label>
                    </td>
                    <td></td>
                </tr>
                <tr>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style38" style="border: thin double #000080; color: #000000;">
                        <p>
                            <span class="auto-style2">Email : </span>
                        </p>
                    </td>
                    <td class="auto-style16" style="border: thin double #000080; color: #000000;">
                        <asp:Label ID="Label3" runat="server" CssClass="auto-style2">null</asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style38" style="border: thin double #000080; color: #000000;">
                        <p>
                            <span class="auto-style2">Account : </span>
                        </p>
                    </td>
                    <td class="auto-style16" style="border: thin double #000080; color: #000000;">
                        <asp:Label ID="Label4" runat="server" CssClass="auto-style2">null</asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style38" style="border: thin double #000080; color: #000000;">
                        <p>
                            <span class="auto-style2">Booking Date : </span>
                        </p>
                    </td>
                    <td class="auto-style16" style="border: thin double #000080; color: #000000;">
                        <asp:Label ID="Label5" runat="server" CssClass="auto-style2">null</asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style38" style="border: thin double #000080; color: #000000;">
                        <p>
                            <span class="auto-style2">Booking Time : </span>
                        </p>
                    </td>
                    <td class="auto-style16" style="border: thin double #000080; color: #000000;">
                        <asp:Label ID="Label6" runat="server" CssClass="auto-style2">null</asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style38" style="border: thin double #000080; color: #000000;">
                        <p>
                            <span class="auto-style2">Source : </span>
                        </p>
                    </td>
                    <td class="auto-style16" style="border: thin double #000080; color: #000000;">
                        <asp:Label ID="Label7" runat="server" CssClass="auto-style2">null</asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style38" style="border: thin double #000080; color: #000000;">
                        <p>
                            <span class="auto-style2">Destination : </span>
                        </p>
                    </td>
                    <td class="auto-style16" style="border: thin double #000080; color: #000000;">
                        <asp:Label ID="Label8" runat="server" CssClass="auto-style2">null</asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style38" style="border: thin double #000080; color: #000000;">
                        <p>
                            <span class="auto-style2">Vehicle : </span>
                        </p>
                    </td>
                    <td class="auto-style16" style="border: thin double #000080; color: #000000;">
                        <asp:Label ID="Label9" runat="server" CssClass="auto-style2">null</asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style38" style="border: thin double #000080; color: #000000;">
                        <p>
                            <span class="auto-style2">Passengers : </span>
                        </p>
                    </td>
                    <td class="auto-style16" style="border: thin double #000080; color: #000000;">
                        <asp:Label ID="Label10" runat="server" CssClass="auto-style2">null</asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style39"></td>
                    <td class="auto-style40" style="border: thin double #000080; color: #000000;">
                        <p>
                            <span class="auto-style2">Comment: </span>
                        </p>
                    </td>
                    <td class="auto-style41" style="border: thin double #000080; color: #000000;">
                        <asp:Label ID="Label11" runat="server" CssClass="auto-style2">null</asp:Label>
                    </td>
                    <td class="auto-style42"></td>
                </tr>
                <tr>
                    <td class="auto-style13"></td>
                    <td class="auto-style38" style="border: thin double #000080; color: #000000;">
                        <p>
                            <span class="auto-style2">Fare : </span>
                        </p>
                    </td>
                    <td class="auto-style16" style="border: thin double #000080; color: #000000;">
                        <asp:Label ID="Label12" runat="server" CssClass="auto-style2">null</asp:Label>
                    </td>
                    <td></td>
                </tr>
                <tr>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style38" style="border: thin double #000080; color: #0033CC;">Via1:</td>
                    <td class="auto-style14" style="border: thin double #000080; color: #000000;">
                        <asp:Label ID="Label21" runat="server" CssClass="auto-style2">null</asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style38" style="border: thin double #000080; color: #000000;">
                        <p style="color: #0033CC">
                            Via2:</p>
                    </td>
                    <td class="auto-style16" style="border: thin double #000080; color: #000000;">
                        <asp:Label ID="Label15" runat="server" CssClass="auto-style2">null</asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style38" style="border: thin double #000080; color: #000000;">
                        <p style="color: #0033CC">
                            Via3<span class="auto-style2"> : </span>
                        </p>
                    </td>
                    <td class="auto-style16" style="border: thin double #000080; color: #000000;">
                        <asp:Label ID="Label16" runat="server" CssClass="auto-style2">null</asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style38" style="border: thin double #000080; color: #000000;">
                        <p style="color: #0033CC">
                            Via4<span class="auto-style2"> : </span>
                        </p>
                    </td>
                    <td class="auto-style16" style="border: thin double #000080; color: #000000;">
                        <asp:Label ID="Label17" runat="server" CssClass="auto-style2">null</asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style38" style="border: thin double #000080; color: #000000;">
                        <p style="color: #0033CC">
                            Via5<span class="auto-style2"> : </span>
                        </p>
                    </td>
                    <td class="auto-style16" style="border: thin double #000080; color: #000000;">
                        <asp:Label ID="Label18" runat="server" CssClass="auto-style2">null</asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style38" style="border: thin double #000080; color: #000000;">
                        <p style="color: #0033CC">
                            Via<span class="auto-style2">6 : </span>
                        </p>
                    </td>
                    <td class="auto-style16" style="border: thin double #000080; color: #000000;">
                        <asp:Label ID="Label19" runat="server" CssClass="auto-style2">null</asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style38" style="border: thin double #000080; color: #000000;">
                        <p style="color: #0033CC">
                            Via7<span class="auto-style2"> : </span>
                        </p>
                    </td>
                    <td class="auto-style16" style="border: thin double #000080; color: #000000;">
                        <asp:Label ID="Label20" runat="server" CssClass="auto-style2">null</asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style20" colspan="4"></td>
                </tr>
            </table>
        </asp:Panel>
        
    </form>
</body>
</html>
