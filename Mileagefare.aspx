<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Mileagefare.aspx.cs" Inherits="WEB.Mileagefare" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style5 {
            height: 2723px;
        }
        .auto-style6 {
            text-align: left;
        }
        .auto-style9 {
            text-align: left;
            height: 367px;
        }
        .auto-style13 {
            width: 98%;
            float: left;
            height: 179px;
        }
        .auto-style1 {
            text-align: center;
            height: 26px;
        }
        .auto-style20 {
            text-align: justify;
        }
        .auto-style22 {
            text-align: center;
            margin-left: 160px;
        }
        .auto-style23 {
            width: 100%;
        }
        .auto-style38 {
            width: 89px;
            text-align: left;
        }
        .auto-style39 {
            width: 99px;
            text-align: left;
        }
        .auto-style40 {
            width: 95px;
            text-align: left;
        }
        .auto-style41 {
            width: 127px;
            text-align: left;
        }
        .auto-style42 {
            width: 123px;
            text-align: left;
        }
        .auto-style43 {
            width: 172px;
            text-align: justify;
        }
        .auto-style48 {
            margin-left: 160px;
        }
        .auto-style54 {
            text-align: left;
            margin-left: 40px;
        }
        .auto-style56 {
            text-align: center;
        }
        .auto-style61 {
            width: 172px;
            text-align: left;
        }
        .auto-style63 {
            width: 191px;
            text-align: left;
        }
        .auto-style32 {
            width: 97%;
            height: 2030px;
        }
        .auto-style65 {
            margin-left: 158px;
        }
        .auto-style73 {
            height: 23px;
            text-align: right;
        }
        .auto-style78 {
            height: 23px;
            width: 361px;
        }
        .auto-style80 {
            width: 361px;
        }
        .auto-style81 {
            width: 198px;
            text-align: left;
        }
        .auto-style82 {
            text-align: right;
        }
        .auto-style83 {
            width: 172px;
            text-align: left;
            height: 32px;
        }
        .auto-style84 {
            width: 191px;
            text-align: left;
            height: 32px;
        }
        .auto-style85 {
            width: 198px;
            text-align: left;
            height: 32px;
        }
        .auto-style86 {
            text-align: left;
            height: 32px;
        }
        </style>
</head>
<body id="PageBody" style="height: 1935px"  runat="server">
    <form id="form1" runat="server" class="auto-style5">
          <asp:Panel ID="Panel1" runat="server" >
              <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" NavigateUrl="FixedrateDetails.aspx">BACK</asp:HyperLink>
        </asp:Panel>
        <div class="auto-style54">
            <div class="auto-style22">
                <strong>
                <br />
                <br />
                            

        
                <asp:Panel ID="Panel3" runat="server" Direction="LeftToRight" Height="103px" Width="763px">
                    <strong>
                    <table class="auto-style23">
                        <tr>
                            <td colspan="6"><strong>
                                <h1><strong>
                                    <asp:Label ID="Label6" runat="server" Font-Bold="True" Text="Account Fixed Rate"></asp:Label>
                                    </strong></h1>
                                </strong></td>
                        </tr>
                        <tr>
                            <td class="auto-style39"><strong>Office Name:</strong></td>
                            <td class="auto-style40"><strong>
                                <asp:DropDownList ID="DropDownList10" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource5" DataTextField="Names" DataValueField="Names" OnSelectedIndexChanged="DropDownList10_SelectedIndexChanged">
                                </asp:DropDownList>
                                </strong></td>
                            <td class="auto-style42"><strong>
                                <p class="auto-style1">
                                    &nbsp;<strong>Select account : </strong>
                                </p>
                                </strong></td>
                            <td class="auto-style38"><strong>
                                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="Name" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                                </asp:DropDownList>
                                </strong></td>
                            <td class="auto-style41"><strong>Select Vehicle : </strong></td>
                            <td class="auto-style6"><strong>
                                <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="Name" DataValueField="Name" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
                                </asp:DropDownList>
                                </strong></td>
                        </tr>
                        <tr>
                            <td colspan="6">&nbsp;</td>
                        </tr>
                    </table>
                    </strong>
                </asp:Panel>
                <br />
                </strong>
            </div>
            <div class="auto-style48">
            <asp:Panel ID="Panel2" runat="server" Direction="LeftToRight" Height="183px" Width="769px">
                <table class="auto-style13">
                    <tr>
                        <td class="auto-style20" colspan="4">
                            <h2 class="auto-style56"><strong>Account Details</strong></h2>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style61">Unit :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                        <td class="auto-style63">
                            <asp:TextBox ID="TextBox1" runat="server" placeholder="Input Units" Width="123px" OnTextChanged="TextBox1_TextChanged" ToolTip="Input Unit Example 2"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="!" Font-Bold="True" ForeColor="Red" Visible="False"></asp:RequiredFieldValidator>
                        </td>
                        <td class="auto-style81">Cost :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                        <td class="auto-style6">
                            <asp:TextBox ID="TextBox2" placeholder="Input Cost" runat="server" Width="123px" ToolTip="Input Cost Example 8"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox2" ErrorMessage="!" Font-Bold="True" ForeColor="Red" Visible="False"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style61">To Nearest : &nbsp;</td>
                        <td class="auto-style63">
                            <asp:TextBox ID="TextBox5" placeholder="Input Nearest" runat="server" Width="123px" ToolTip="Input nearest Example 1"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox5" ErrorMessage="!" Font-Bold="True" ForeColor="Red" Visible="False"></asp:RequiredFieldValidator>
                        </td>
                        <td class="auto-style81">Extra Drop:&nbsp; &nbsp;&nbsp;</td>
                        <td class="auto-style6">
                            <asp:TextBox ID="TextBox7" placeholder="Input ExtraDrop" runat="server" Width="123px" ToolTip="Input Drop Example 1"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox7" ErrorMessage="!" Font-Bold="True" ForeColor="Red" Visible="False"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style61">Round Type : </td>
                        <td class="auto-style63">
                            <asp:DropDownList ID="DropDownList6" runat="server" AutoPostBack="True" Width="123px">
                                <asp:ListItem Selected="True">Price</asp:ListItem>
                                <asp:ListItem>Distance</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td class="auto-style81">Round :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                        <td class="auto-style6">
                            <asp:DropDownList ID="DropDownList4" runat="server" AutoPostBack="True" Width="123px">
                                <asp:ListItem Selected="True">UP</asp:ListItem>
                                <asp:ListItem>DOWN</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style83">Minimum Price </td>
                        <td class="auto-style84">
                            <asp:TextBox ID="TextBox6"  placeholder="Input MinPrice" runat="server" Width="123px" ToolTip="Input Min Price Example 6"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox6" ErrorMessage="!" Font-Bold="True" ForeColor="Red" Visible="False"></asp:RequiredFieldValidator>
                        </td>
                        <td class="auto-style85">V.A.T Rate :&nbsp; </td>
                        <td class="auto-style86">
                            <asp:DropDownList ID="DropDownList5" runat="server" AutoPostBack="True" Width="123px">
                                <asp:ListItem Selected="True">ZERO</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style56" colspan="4">
                            <asp:Label ID="Label4" runat="server" ForeColor="Red"></asp:Label>
                            <asp:Label ID="Label7" runat="server" ForeColor="Red"></asp:Label>
                        </td>
                    </tr>
                </table>
            </asp:Panel>
            </div>
            <br />
                            <asp:Button ID="Button1" runat="server" BackColor="#000066" Font-Bold="True" ForeColor="White" OnClick="Button1_Click" Text="Add" Width="161px" Height="40px" />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Panel ID="Panel4" runat="server" Direction="LeftToRight" Height="2176px" CssClass="auto-style65" Width="766px">
                <table class="auto-style32">
                    <tr>
                        <td class="auto-style78"><strong>
                            <asp:DropDownList ID="DropDownList11" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="Name" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                            </asp:DropDownList>
                            <asp:DropDownList ID="DropDownList12" runat="server" DataSourceID="SqlDataSource2" DataTextField="Name" DataValueField="Name" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
                            </asp:DropDownList>
                            </strong></td>
                        <td class="auto-style73">
                            <asp:Button ID="TableGenerate" runat="server" BackColor="#000066" Font-Bold="True" ForeColor="White" OnClick="TableGenerate_Click" Text="Show Table" Width="161px" CausesValidation="False"/>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style56" colspan="2">
                            <asp:GridView ID="GridView1"  runat="server" AllowPaging="True" AutoGenerateColumns="False" AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="1" DataKeyNames="No" DataSourceID="SqlDataSource3" EmptyDataText="There are no data records to display." GridLines="Vertical" Height="37px" Width="752px" CausesValidation="False">
                                <AlternatingRowStyle BackColor="#DCDCDC" />
                                <Columns>
                                    <asp:BoundField DataField="No" HeaderText="No" InsertVisible="False" ReadOnly="True" SortExpression="No" />
                                    <asp:BoundField DataField="AccountName" HeaderText="AccountName" SortExpression="AccountName" />
                                    <asp:BoundField DataField="Vehiclename" HeaderText="Vehiclename" SortExpression="Vehiclename" />
                                    <asp:BoundField DataField="Unit" HeaderText="Unit" SortExpression="Unit" />
                                    <asp:BoundField DataField="Cost" HeaderText="Cost" SortExpression="Cost" />
                                    <asp:BoundField DataField="OfficeName" HeaderText="OfficeName" SortExpression="OfficeName" />
                                </Columns>
                                <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                                <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                                <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                                <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                <SortedAscendingHeaderStyle BackColor="#0000A9" />
                                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                <SortedDescendingHeaderStyle BackColor="#000065" />
                            </asp:GridView>
                            <asp:GridView ID="GridView5" runat="server" AllowPaging="True" AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="1" DataKeyNames="No" DataSourceID="SqlDataSource6" EmptyDataText="There are no data records to display." GridLines="Vertical" Width="752px">
                                <AlternatingRowStyle BackColor="#DCDCDC" />
                                <Columns>
                                    <asp:BoundField DataField="No" HeaderText="No" InsertVisible="False" ReadOnly="True" SortExpression="No" />
                                    <asp:BoundField DataField="AccountName" HeaderText="AccountName" SortExpression="AccountName" />
                                    <asp:BoundField DataField="Vehiclename" HeaderText="Vehiclename" SortExpression="Vehiclename" />
                                    <asp:BoundField DataField="Unit" HeaderText="Unit" SortExpression="Unit" />
                                    <asp:BoundField DataField="Cost" HeaderText="Cost" SortExpression="Cost" />
                                    <asp:BoundField DataField="OfficeName" HeaderText="OfficeName" SortExpression="OfficeName" />
                                </Columns>
                                <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                                <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                                <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                                <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                <SortedAscendingHeaderStyle BackColor="#0000A9" />
                                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                <SortedDescendingHeaderStyle BackColor="#000065" />
                            </asp:GridView>
                            <asp:GridView ID="GridView3" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="1" DataKeyNames="No" DataSourceID="SqlDataSource4" EmptyDataText="There are no data records to display." GridLines="Vertical" Width="752px" AutoGenerateDeleteButton="True" AutoGenerateEditButton="True">
                                <AlternatingRowStyle BackColor="#DCDCDC" />
                                <Columns>
                                    <asp:BoundField DataField="No" HeaderText="No" ReadOnly="True" SortExpression="No" />
                                    <asp:BoundField DataField="AccountName" HeaderText="AccountName" SortExpression="AccountName" />
                                    <asp:BoundField DataField="Vehiclename" HeaderText="Vehiclename" SortExpression="Vehiclename" />
                                    <asp:BoundField DataField="Unit" HeaderText="Unit" SortExpression="Unit" />
                                    <asp:BoundField DataField="Cost" HeaderText="Cost" SortExpression="Cost" />
                                    <asp:BoundField DataField="OfficeName" HeaderText="OfficeName" SortExpression="OfficeName" />
                                </Columns>
                                <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                                <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                                <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                                <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                <SortedAscendingHeaderStyle BackColor="#0000A9" />
                                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                <SortedDescendingHeaderStyle BackColor="#000065" />
                            </asp:GridView>
                            <asp:GridView ID="GridView6" runat="server" AllowPaging="True" AutoGenerateColumns="False" AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="1" DataKeyNames="No" DataSourceID="SqlDataSource7" EmptyDataText="There are no data records to display." GridLines="Vertical" Width="744px">
                                <AlternatingRowStyle BackColor="#DCDCDC" />
                                <Columns>
                                    <asp:BoundField DataField="No" HeaderText="No" InsertVisible="False" ReadOnly="True" SortExpression="No" />
                                    <asp:BoundField DataField="AccountName" HeaderText="AccountName" SortExpression="AccountName" />
                                    <asp:BoundField DataField="Vehiclename" HeaderText="Vehiclename" SortExpression="Vehiclename" />
                                    <asp:BoundField DataField="Unit" HeaderText="Unit" SortExpression="Unit" />
                                    <asp:BoundField DataField="Cost" HeaderText="Cost" SortExpression="Cost" />
                                    <asp:BoundField DataField="OfficeName" HeaderText="OfficeName" SortExpression="OfficeName" />
                                </Columns>
                                <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                                <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                                <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                                <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                <SortedAscendingHeaderStyle BackColor="#0000A9" />
                                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                <SortedDescendingHeaderStyle BackColor="#000065" />
                            </asp:GridView>
                            <asp:GridView ID="GridView8" runat="server" AllowPaging="True" AutoGenerateColumns="False" AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="1" DataKeyNames="No" DataSourceID="SqlDataSource8" EmptyDataText="There are no data records to display." GridLines="Vertical" Width="752px">
                                <AlternatingRowStyle BackColor="#DCDCDC" />
                                <Columns>
                                    <asp:BoundField DataField="No" HeaderText="No" InsertVisible="False" ReadOnly="True" SortExpression="No" />
                                    <asp:BoundField DataField="AccountName" HeaderText="AccountName" SortExpression="AccountName" />
                                    <asp:BoundField DataField="Vehiclename" HeaderText="Vehiclename" SortExpression="Vehiclename" />
                                    <asp:BoundField DataField="Unit" HeaderText="Unit" SortExpression="Unit" />
                                    <asp:BoundField DataField="Cost" HeaderText="Cost" SortExpression="Cost" />
                                    <asp:BoundField DataField="OfficeName" HeaderText="OfficeName" SortExpression="OfficeName" />
                                </Columns>
                                <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                                <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                                <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                                <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                <SortedAscendingHeaderStyle BackColor="#0000A9" />
                                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                <SortedDescendingHeaderStyle BackColor="#000065" />
                            </asp:GridView>
                            <asp:GridView ID="GridView9" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="No" DataSourceID="SqlDataSource9" EmptyDataText="There are no data records to display." GridLines="Vertical" Width="752px">
                                <AlternatingRowStyle BackColor="#DCDCDC" />
                                <Columns>
                                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                                    <asp:BoundField DataField="No" HeaderText="No" InsertVisible="False" ReadOnly="True" SortExpression="No" />
                                    <asp:BoundField DataField="AccountName" HeaderText="AccountName" SortExpression="AccountName" />
                                    <asp:BoundField DataField="Vehiclename" HeaderText="Vehiclename" SortExpression="Vehiclename" />
                                    <asp:BoundField DataField="Unit" HeaderText="Unit" SortExpression="Unit" />
                                    <asp:BoundField DataField="Cost" HeaderText="Cost" SortExpression="Cost" />
                                    <asp:BoundField DataField="OfficeName" HeaderText="OfficeName" SortExpression="OfficeName" />
                                </Columns>
                                <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                                <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                                <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                                <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                <SortedAscendingHeaderStyle BackColor="#0000A9" />
                                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                <SortedDescendingHeaderStyle BackColor="#000065" />
                            </asp:GridView>
                            <asp:GridView ID="GridView10" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="No" DataSourceID="SqlDataSource10" EmptyDataText="There are no data records to display." GridLines="Vertical" Width="752px">
                                <AlternatingRowStyle BackColor="#DCDCDC" />
                                <Columns>
                                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                                    <asp:BoundField DataField="No" HeaderText="No" InsertVisible="False" ReadOnly="True" SortExpression="No" />
                                    <asp:BoundField DataField="AccountName" HeaderText="AccountName" SortExpression="AccountName" />
                                    <asp:BoundField DataField="Vehiclename" HeaderText="Vehiclename" SortExpression="Vehiclename" />
                                    <asp:BoundField DataField="Unit" HeaderText="Unit" SortExpression="Unit" />
                                    <asp:BoundField DataField="Cost" HeaderText="Cost" SortExpression="Cost" />
                                    <asp:BoundField DataField="OfficeName" HeaderText="OfficeName" SortExpression="OfficeName" />
                                </Columns>
                                <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                                <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                                <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                                <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                <SortedAscendingHeaderStyle BackColor="#0000A9" />
                                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                <SortedDescendingHeaderStyle BackColor="#000065" />
                            </asp:GridView>
                            <asp:GridView ID="GridView7" runat="server" AllowPaging="True" AutoGenerateColumns="False" AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="1" DataKeyNames="No" DataSourceID="SqlDataSource11" EmptyDataText="There are no data records to display." GridLines="Vertical" Width="752px">
                                <AlternatingRowStyle BackColor="#DCDCDC" />
                                <Columns>
                                    <asp:BoundField DataField="No" HeaderText="No" InsertVisible="False" ReadOnly="True" SortExpression="No" />
                                    <asp:BoundField DataField="AccountName" HeaderText="AccountName" SortExpression="AccountName" />
                                    <asp:BoundField DataField="Vehiclename" HeaderText="Vehiclename" SortExpression="Vehiclename" />
                                    <asp:BoundField DataField="Unit" HeaderText="Unit" SortExpression="Unit" />
                                    <asp:BoundField DataField="Cost" HeaderText="Cost" SortExpression="Cost" />
                                    <asp:BoundField DataField="OfficeName" HeaderText="OfficeName" SortExpression="OfficeName" />
                                </Columns>
                                <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                                <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                                <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                                <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                <SortedAscendingHeaderStyle BackColor="#0000A9" />
                                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                <SortedDescendingHeaderStyle BackColor="#000065" />
                            </asp:GridView>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style80">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </asp:Panel>
            &nbsp;<br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:BuzybeezWebConnectionString %>" DeleteCommand="DELETE FROM [VEstate] WHERE [No] = @original_No" InsertCommand="INSERT INTO [VEstate] ([AccountName], [Vehiclename], [Unit], [Cost], [OfficeName]) VALUES (@AccountName, @Vehiclename, @Unit, @Cost, @OfficeName)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [No], [AccountName], [Vehiclename], [Unit], [Cost], [OfficeName] FROM [VEstate] WHERE (([AccountName] = @AccountName) AND ([Vehiclename] = @Vehiclename)) ORDER BY [AccountName], [Unit], [Cost] DESC" UpdateCommand="UPDATE [VEstate] SET [AccountName] = @AccountName, [Vehiclename] = @Vehiclename, [Unit] = @Unit, [Cost] = @Cost, [OfficeName] = @OfficeName WHERE [No] = @original_No">
                <DeleteParameters>
                    <asp:Parameter Name="original_No" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="AccountName" Type="String" />
                    <asp:Parameter Name="Vehiclename" Type="String" />
                    <asp:Parameter Name="Unit" Type="Double" />
                    <asp:Parameter Name="Cost" Type="Double" />
                    <asp:Parameter Name="OfficeName" Type="String" />
                </InsertParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList11" DefaultValue="CASH" Name="AccountName" PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="DropDownList12" DefaultValue="Estate" Name="Vehiclename" PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="AccountName" Type="String" />
                    <asp:Parameter Name="Vehiclename" Type="String" />
                    <asp:Parameter Name="Unit" Type="Double" />
                    <asp:Parameter Name="Cost" Type="Double" />
                    <asp:Parameter Name="OfficeName" Type="String" />
                    <asp:Parameter Name="original_No" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:BuzybeezWebConnectionString %>" DeleteCommand="DELETE FROM [VLowCar] WHERE [No] = @No" InsertCommand="INSERT INTO [VLowCar] ([AccountName], [Vehiclename], [Unit], [Cost], [OfficeName]) VALUES (@AccountName, @Vehiclename, @Unit, @Cost, @OfficeName)" SelectCommand="SELECT [No], [AccountName], [Vehiclename], [Unit], [Cost], [OfficeName] FROM [VLowCar] WHERE (([AccountName] = @AccountName) AND ([Vehiclename] = @Vehiclename))" UpdateCommand="UPDATE [VLowCar] SET [AccountName] = @AccountName, [Vehiclename] = @Vehiclename, [Unit] = @Unit, [Cost] = @Cost, [OfficeName] = @OfficeName WHERE [No] = @No">
                <DeleteParameters>
                    <asp:Parameter Name="No" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="AccountName" Type="String" />
                    <asp:Parameter Name="Vehiclename" Type="String" />
                    <asp:Parameter Name="Unit" Type="Double" />
                    <asp:Parameter Name="Cost" Type="Double" />
                    <asp:Parameter Name="OfficeName" Type="String" />
                </InsertParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList11" DefaultValue="CASH" Name="AccountName" PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="DropDownList12" DefaultValue="Lowcar" Name="Vehiclename" PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="AccountName" Type="String" />
                    <asp:Parameter Name="Vehiclename" Type="String" />
                    <asp:Parameter Name="Unit" Type="Double" />
                    <asp:Parameter Name="Cost" Type="Double" />
                    <asp:Parameter Name="OfficeName" Type="String" />
                    <asp:Parameter Name="No" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <strong>
            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:BuzybeezWebConnectionString %>" DeleteCommand="DELETE FROM [VExecutive] WHERE [No] = @No" InsertCommand="INSERT INTO [VExecutive] ([AccountName], [No], [Vehiclename], [Unit], [Cost], [OfficeName]) VALUES (@AccountName, @No, @Vehiclename, @Unit, @Cost, @OfficeName)" SelectCommand="SELECT [AccountName], [No], [Vehiclename], [Unit], [Cost], [OfficeName] FROM [VExecutive] WHERE (([AccountName] = @AccountName) AND ([Vehiclename] = @Vehiclename)) ORDER BY [AccountName], [Unit], [Cost] DESC" UpdateCommand="UPDATE [VExecutive] SET [AccountName] = @AccountName, [Vehiclename] = @Vehiclename, [Unit] = @Unit, [Cost] = @Cost, [OfficeName] = @OfficeName WHERE [No] = @No">
                <DeleteParameters>
                    <asp:Parameter Name="No" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="AccountName" Type="String" />
                    <asp:Parameter Name="No" Type="Int32" />
                    <asp:Parameter Name="Vehiclename" Type="String" />
                    <asp:Parameter Name="Unit" Type="Double" />
                    <asp:Parameter Name="Cost" Type="Double" />
                    <asp:Parameter Name="OfficeName" Type="String" />
                </InsertParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList11" DefaultValue="CASH" Name="AccountName" PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="DropDownList12" DefaultValue="Saloon" Name="Vehiclename" PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="AccountName" Type="String" />
                    <asp:Parameter Name="Vehiclename" Type="String" />
                    <asp:Parameter Name="Unit" Type="Double" />
                    <asp:Parameter Name="Cost" Type="Double" />
                    <asp:Parameter Name="OfficeName" Type="String" />
                    <asp:Parameter Name="No" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            </strong>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:BuzybeezWebConnectionString %>" DeleteCommand="DELETE FROM [VSaloon] WHERE [No] = @No" InsertCommand="INSERT INTO [VSaloon] ([AccountName], [Vehiclename], [Cost], [Unit], [OfficeName]) VALUES (@AccountName, @Vehiclename, @Cost, @Unit, @OfficeName)" SelectCommand="SELECT [No], [AccountName], [Vehiclename], [Cost], [Unit], [OfficeName] FROM [VSaloon] WHERE (([AccountName] = @AccountName) AND ([Vehiclename] = @Vehiclename)) ORDER BY [AccountName], [Unit], [Cost] DESC" UpdateCommand="UPDATE [VSaloon] SET [AccountName] = @AccountName, [Vehiclename] = @Vehiclename, [Cost] = @Cost, [Unit] = @Unit, [OfficeName] = @OfficeName WHERE [No] = @No">
                <DeleteParameters>
                    <asp:Parameter Name="No" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="AccountName" Type="String" />
                    <asp:Parameter Name="Vehiclename" Type="String" />
                    <asp:Parameter Name="Cost" Type="Double" />
                    <asp:Parameter Name="Unit" Type="Double" />
                    <asp:Parameter Name="OfficeName" Type="String" />
                </InsertParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList11" DefaultValue="CASH" Name="AccountName" PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="DropDownList12" DefaultValue="Saloon" Name="Vehiclename" PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="AccountName" Type="String" />
                    <asp:Parameter Name="Vehiclename" Type="String" />
                    <asp:Parameter Name="Cost" Type="Double" />
                    <asp:Parameter Name="Unit" Type="Double" />
                    <asp:Parameter Name="OfficeName" Type="String" />
                    <asp:Parameter Name="No" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource8" runat="server" ConnectionString="<%$ ConnectionStrings:BuzybeezWebConnectionString %>" DeleteCommand="DELETE FROM [V6Passenger] WHERE [No] = @No" InsertCommand="INSERT INTO [V6Passenger] ([AccountName], [Vehiclename], [Unit], [Cost], [OfficeName]) VALUES (@AccountName, @Vehiclename, @Unit, @Cost, @OfficeName)" SelectCommand="SELECT [No], [AccountName], [Vehiclename], [Unit], [Cost], [OfficeName] FROM [V6Passenger] WHERE (([AccountName] = @AccountName) AND ([Vehiclename] = @Vehiclename)) ORDER BY [AccountName], [Unit], [Cost] DESC" UpdateCommand="UPDATE [V6Passenger] SET [AccountName] = @AccountName, [Vehiclename] = @Vehiclename, [Unit] = @Unit, [Cost] = @Cost, [OfficeName] = @OfficeName WHERE [No] = @No">
                <DeleteParameters>
                    <asp:Parameter Name="No" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="AccountName" Type="String" />
                    <asp:Parameter Name="Vehiclename" Type="String" />
                    <asp:Parameter Name="Unit" Type="Double" />
                    <asp:Parameter Name="Cost" Type="Double" />
                    <asp:Parameter Name="OfficeName" Type="String" />
                </InsertParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList11" DefaultValue="CASH" Name="AccountName" PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="DropDownList12" DefaultValue="6Passenger" Name="Vehiclename" PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="AccountName" Type="String" />
                    <asp:Parameter Name="Vehiclename" Type="String" />
                    <asp:Parameter Name="Unit" Type="Double" />
                    <asp:Parameter Name="Cost" Type="Double" />
                    <asp:Parameter Name="OfficeName" Type="String" />
                    <asp:Parameter Name="No" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource9" runat="server" ConnectionString="<%$ ConnectionStrings:BuzybeezWebConnectionString %>" DeleteCommand="DELETE FROM [V7Passenger] WHERE [No] = @No" InsertCommand="INSERT INTO [V7Passenger] ([AccountName], [Vehiclename], [Unit], [Cost], [OfficeName]) VALUES (@AccountName, @Vehiclename, @Unit, @Cost, @OfficeName)" SelectCommand="SELECT [No], [AccountName], [Vehiclename], [Unit], [Cost], [OfficeName] FROM [V7Passenger] WHERE (([AccountName] = @AccountName) AND ([Vehiclename] = @Vehiclename)) ORDER BY [AccountName], [Unit], [Cost] DESC" UpdateCommand="UPDATE [V7Passenger] SET [AccountName] = @AccountName, [Vehiclename] = @Vehiclename, [Unit] = @Unit, [Cost] = @Cost, [OfficeName] = @OfficeName WHERE [No] = @No">
                <DeleteParameters>
                    <asp:Parameter Name="No" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="AccountName" Type="String" />
                    <asp:Parameter Name="Vehiclename" Type="String" />
                    <asp:Parameter Name="Unit" Type="Double" />
                    <asp:Parameter Name="Cost" Type="Double" />
                    <asp:Parameter Name="OfficeName" Type="String" />
                </InsertParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList11" DefaultValue="CASH" Name="AccountName" PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="DropDownList12" DefaultValue="7Passenger" Name="Vehiclename" PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="AccountName" Type="String" />
                    <asp:Parameter Name="Vehiclename" Type="String" />
                    <asp:Parameter Name="Unit" Type="Double" />
                    <asp:Parameter Name="Cost" Type="Double" />
                    <asp:Parameter Name="OfficeName" Type="String" />
                    <asp:Parameter Name="No" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource10" runat="server" ConnectionString="<%$ ConnectionStrings:BuzybeezWebConnectionString %>" DeleteCommand="DELETE FROM [V8Passenger] WHERE [No] = @No" InsertCommand="INSERT INTO [V8Passenger] ([AccountName], [Vehiclename], [Unit], [Cost], [OfficeName]) VALUES (@AccountName, @Vehiclename, @Unit, @Cost, @OfficeName)" SelectCommand="SELECT [No], [AccountName], [Vehiclename], [Unit], [Cost], [OfficeName] FROM [V8Passenger] WHERE (([AccountName] = @AccountName) AND ([Vehiclename] = @Vehiclename)) ORDER BY [AccountName], [Unit], [Cost] DESC" UpdateCommand="UPDATE [V8Passenger] SET [AccountName] = @AccountName, [Vehiclename] = @Vehiclename, [Unit] = @Unit, [Cost] = @Cost, [OfficeName] = @OfficeName WHERE [No] = @No">
                <DeleteParameters>
                    <asp:Parameter Name="No" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="AccountName" Type="String" />
                    <asp:Parameter Name="Vehiclename" Type="String" />
                    <asp:Parameter Name="Unit" Type="Double" />
                    <asp:Parameter Name="Cost" Type="Double" />
                    <asp:Parameter Name="OfficeName" Type="String" />
                </InsertParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList11" DefaultValue="CASH" Name="AccountName" PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="DropDownList12" DefaultValue="8Passenger" Name="Vehiclename" PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="AccountName" Type="String" />
                    <asp:Parameter Name="Vehiclename" Type="String" />
                    <asp:Parameter Name="Unit" Type="Double" />
                    <asp:Parameter Name="Cost" Type="Double" />
                    <asp:Parameter Name="OfficeName" Type="String" />
                    <asp:Parameter Name="No" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource11" runat="server" ConnectionString="<%$ ConnectionStrings:BuzybeezWebConnectionString %>" DeleteCommand="DELETE FROM [V5Seater] WHERE [No] = @No" InsertCommand="INSERT INTO [V5Seater] ([AccountName], [Vehiclename], [Unit], [Cost], [OfficeName]) VALUES (@AccountName, @Vehiclename, @Unit, @Cost, @OfficeName)" SelectCommand="SELECT [No], [AccountName], [Vehiclename], [Unit], [Cost], [OfficeName] FROM [V5Seater] WHERE (([AccountName] = @AccountName) AND ([Vehiclename] = @Vehiclename)) ORDER BY [AccountName], [Unit], [Cost] DESC" UpdateCommand="UPDATE [V5Seater] SET [AccountName] = @AccountName, [Vehiclename] = @Vehiclename, [Unit] = @Unit, [Cost] = @Cost, [OfficeName] = @OfficeName WHERE [No] = @No">
                <DeleteParameters>
                    <asp:Parameter Name="No" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="AccountName" Type="String" />
                    <asp:Parameter Name="Vehiclename" Type="String" />
                    <asp:Parameter Name="Unit" Type="Double" />
                    <asp:Parameter Name="Cost" Type="Double" />
                    <asp:Parameter Name="OfficeName" Type="String" />
                </InsertParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList11" DefaultValue="CASH" Name="AccountName" PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="DropDownList12" DefaultValue="5Seater" Name="Vehiclename" PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="AccountName" Type="String" />
                    <asp:Parameter Name="Vehiclename" Type="String" />
                    <asp:Parameter Name="Unit" Type="Double" />
                    <asp:Parameter Name="Cost" Type="Double" />
                    <asp:Parameter Name="OfficeName" Type="String" />
                    <asp:Parameter Name="No" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <strong>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BuzybeezWebConnectionString %>" SelectCommand="SELECT [Name] FROM [Accounts]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:BuzybeezWebConnectionString %>" SelectCommand="SELECT [Names] FROM [OfficeNames]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:BuzybeezWebConnectionString %>" SelectCommand="SELECT [Name] FROM [Vehicle]"></asp:SqlDataSource>
            </strong>
            <br />
        </div>
        <div class="auto-style9">
            <br />
            <asp:Panel ID="Panel5" runat="server" Height="270px">
                &nbsp;Driver Details :ver Details :iver Details :<br /> Unit :
                <asp:TextBox ID="TextBox3" runat="server" Width="82px"></asp:TextBox>
                &nbsp; Cost :
                <asp:TextBox ID="TextBox4" runat="server" Width="92px"></asp:TextBox>
                <br />
                <br />
                <br />
                Round Type :
                <asp:DropDownList ID="DropDownList7" runat="server" AutoPostBack="True">
                    <asp:ListItem Selected="True">Price</asp:ListItem>
                    <asp:ListItem>Distance</asp:ListItem>
                </asp:DropDownList>
                &nbsp; Percentage :
                <asp:TextBox ID="TextBox11" runat="server" Width="74px"></asp:TextBox>
                <br />
                <br />
                &nbsp;Round :
                <asp:DropDownList ID="DropDownList8" runat="server" AutoPostBack="True">
                    <asp:ListItem Selected="True">UP</asp:ListItem>
                    <asp:ListItem>DOWN</asp:ListItem>
                </asp:DropDownList>
                &nbsp; To Nearest :
                <asp:TextBox ID="TextBox8" runat="server" Width="74px"></asp:TextBox>
                &nbsp; Minimum Price
                <asp:TextBox ID="TextBox9" runat="server" Width="74px"></asp:TextBox>
                &nbsp; Extra Drop :<asp:TextBox ID="TextBox10" runat="server" Width="64px"></asp:TextBox>
                &nbsp;<br /> V.A.T Rate :
                <asp:DropDownList ID="DropDownList9" runat="server" AutoPostBack="True">
                    <asp:ListItem Selected="True">ZERO</asp:ListItem>
                </asp:DropDownList>
                <br />
                <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Add" Width="75px" />
                <asp:Label ID="Label5" runat="server"></asp:Label>
            </asp:Panel>
            <br />
        
            <br />
        
        </div>
        
    </form>
</body>
</html>
