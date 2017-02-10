<%@ Page Language="C#" AutoEventWireup="true" CodeFile="BookingSearch.aspx.cs" Inherits="WEB.BookingSearch" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-decoration: underline;
            text-align: center;
            font-size: xx-large;
            color: #FF66FF;
        }
        .auto-style2 {
            margin-right: 0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <p class="auto-style1">
            <strong>Online Booking Search</strong></p>
        <asp:Panel ID="Panel1" runat="server" Height="631px">
            Search Booking by
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            &nbsp;<asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem Value="Select"></asp:ListItem>
                <asp:ListItem Value="jobref"></asp:ListItem>
                <asp:ListItem Value="From"></asp:ListItem>
                <asp:ListItem Value="To"></asp:ListItem>
                <asp:ListItem Value="Name"></asp:ListItem>
                <asp:ListItem Value="Telephone"></asp:ListItem>
                <asp:ListItem Value="Date"></asp:ListItem>
                <asp:ListItem Value="Email"></asp:ListItem>
            </asp:DropDownList>
            &nbsp;
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" Width="96px" />
            <br />
            <br />
            <br />
            &nbsp;<asp:GridView ID="GridView1" runat="server" CssClass="auto-style2" Height="504px" Width="1174px">
            </asp:GridView>
        </asp:Panel>
    </form>
