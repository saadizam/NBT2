<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ViewDetail.aspx.cs" Inherits="ViewDetail" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        h1{
            text-align:center;
        }
                 .header
{
              width:50%;
    background-color: #646464;

    font-family: Arial;

    color: White;

    border: none 0px transparent;
    height: 25px;

    text-align: center;

    font-size: 16px;

}
    </style>
</head>
<body>
       <h1>
        Job Details
    </h1>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" HeaderStyle-CssClass="header">
        </asp:GridView>
    
    </div>
        <table class="auto-style1">
            <tr>
                <td>
                    <asp:Button ID="Button1" runat="server" BackColor="#66FF33" OnClick="Button1_Click" Text="Accept" />
                </td>
                <td>
                    <asp:Button ID="Button2" runat="server" BackColor="#FF3300" OnClick="Button2_Click" Text="Declined" />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
