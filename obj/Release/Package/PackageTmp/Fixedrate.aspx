<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Fixedrate.aspx.cs" Inherits="WEB.Fixedrate" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: left;
            height: 258px;
        }
        .auto-style2 {
            margin-top: 0px;
        }
        .auto-style3 {
            margin-left: 0px;
        }
        .auto-style4 {
            height: 1280px;
        }
        .auto-style5 {
            text-align: center;
        }
        .auto-style6 {
            margin-left: 269px;
        }
        .auto-style7 {
            text-align: left;
        }
        </style>
    <script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?key=AIzaSyCLOv4XXeiLHi0SUzW0O3ZNCiq4jGiVHFI&sensor=false&libraries=places"></script>
</head>
<body>
    <form id="form1" runat="server" class="auto-style4">
        <div class="auto-style1">
            <div class="auto-style5">
                <strong>Fixed Rate<br />
            Please Select office :
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="Names" DataValueField="Names" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
            </asp:DropDownList>
                </strong>
            </div>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:BuzybeezWebConnectionString %>" SelectCommand="SELECT [Names] FROM [OfficeNames]"></asp:SqlDataSource>
            <div class="auto-style5">
                <strong>
                <br />
                Select Account :
                <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource4" DataTextField="Name" DataValueField="Name">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:BuzybeezWebConnectionString %>" SelectCommand="SELECT [Name] FROM [Accounts]"></asp:SqlDataSource>
                <br />
                Here you are allowed to fixed your rates :<br />
            <br />
            Select :
            <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource3" DataTextField="Name" DataValueField="Name" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
            </asp:DropDownList>
                <asp:Panel ID="Panel5" runat="server">
                    <strong>
                    <asp:Button ID="Button5" runat="server" OnClick="Button5_Click1" Text="Check Previous record for edit and view" Width="281px" Enabled="False" />
                    <asp:CheckBox ID="CheckBox1" runat="server" AutoPostBack="True" OnCheckedChanged="CheckBox1_CheckedChanged1" Text="On/Off" />
                    </strong>
                </asp:Panel>
                </strong>
            </div>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:BuzybeezWebConnectionString %>" SelectCommand="SELECT [Name] FROM [location]"></asp:SqlDataSource>
            <div class="auto-style5">
                <strong>
            <br />
                Selected Office :<asp:Label ID="Label1" runat="server" ForeColor="Blue"></asp:Label>
                </strong>&nbsp;<strong> Fixed Fare:
            <asp:Label ID="Label2" runat="server" ForeColor="Blue"></asp:Label>
                </strong>
            <br />
            </div>
        </div>
     :
                <br />
            </div>
        </div>
        
        <asp:Panel ID="Panel1" runat="server" CssClass="auto-style2" Height="1023px">
            <div class="auto-style5">
                <br />

                <label for="fullAddress">
                <asp:Panel runat="server" DefaultButton="Button4" ID="Panel4" >
                    <div class="auto-style7">
                        <strong>Source :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:TextBox ID="TextBox4" runat="server" OnTextChanged="TextBox4_TextChanged" Width="413px"></asp:TextBox>
                        &nbsp;&nbsp;<asp:TextBox ID="TextBox11" runat="server" Visible="False"></asp:TextBox>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button4" runat="server" BackColor="#6699FF" OnClick="Button4_Click" Text="CheckPlot" Visible="False" />
                        <br />
                        <script>






            function initialize() {

    new google.maps.places.Autocomplete(
    (document.getElementById('TextBox4')), {
        types: ['geocode'],
        componentRestrictions: { country: 'uk' }
    });
}

initialize();
 </script>
                        <br />
                        &nbsp;Destination :&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                        <asp:TextBox ID="TextBox5" runat="server" OnTextChanged="TextBox5_TextChanged" Width="414px"></asp:TextBox>
                        &nbsp;
                        <asp:TextBox ID="TextBox12" runat="server" Visible="False"></asp:TextBox>
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <label for="fullAddress">
                        <asp:Label ID="Label6" runat="server"></asp:Label>
                        </label>
                        <br />
                        <script>








            function initialize() {

    new google.maps.places.Autocomplete(
    (document.getElementById('TextBox5')), {
        types: ['geocode'],
        componentRestrictions: { country: 'uk' }
    });
}

initialize();
 </script>
                        <br />
                        <label for="Fare">
                        &nbsp;Estimated Fare:</label>
                        <asp:TextBox ID="TextBox3" runat="server" CssClass="auto-style3" Width="175px"></asp:TextBox>
                        &nbsp;</strong>
                    </div>
                    </asp:Panel>

                </label><br />
                <br />
                <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Fix Vehicle Rates<br /> </strong>
                <br />
            </div>
                      

            <asp:Panel ID="Panel2" runat="server" Height="913px">
                <div class="auto-style5">
                    <div class="auto-style5">
                        <asp:Panel ID="Panel3" runat="server" CssClass="auto-style2" Height="360px">
                            &nbsp;<asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" AutoGenerateEditButton="True" AutoGenerateSelectButton="True" BorderStyle="Solid" CellPadding="4" CssClass="auto-style6" DataKeyNames="ID" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="627px">
                                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                <Columns>
                                    <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" />
                                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                                    <asp:BoundField DataField="A" HeaderText="A" SortExpression="A" />
                                    <asp:BoundField DataField="B" HeaderText="B" SortExpression="B" />
                                </Columns>
                                <EditRowStyle BackColor="#999999" />
                                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                            </asp:GridView>
                            <br />
                        </asp:Panel>
                    </div>
                    <div class="auto-style5">
                        <br />
                        &nbsp;<strong>Vehicle Name:
                        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                        A :
                        <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                        &nbsp;B:
                        <asp:TextBox ID="TextBox10" runat="server" OnTextChanged="TextBox10_TextChanged"></asp:TextBox>
                        </strong>
                        <br />
                    </div>
                </div>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BuzybeezWebConnectionString %>" SelectCommand="SELECT * FROM [vehfixedfare]"></asp:SqlDataSource>
                <div class="auto-style5">
                    &nbsp; <strong>Calculate based on fixed fare :<br /> </strong>&nbsp;<strong><br />
                    <br />
                    &nbsp;Actual Fare :&nbsp;
                    <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;
                    <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" BackColor="#33CC33" OnClick="Button1_Click" Text="Save" />
                    <br />
                    <br />
                    <asp:Label ID="Label4" runat="server"></asp:Label>
                    <br />
                    <br />
                    <asp:Label ID="Label5" runat="server"></asp:Label>
                    </strong>
                </div>
            </asp:Panel>
           
           
        </asp:Panel>
    </form>
</body>
</html>
