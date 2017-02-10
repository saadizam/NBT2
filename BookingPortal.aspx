<%@ Page Language="C#" AutoEventWireup="true" CodeFile="BookingPortal.aspx.cs" Inherits="WEB.BookingPortal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
 <meta name="viewport" content="width=device-width, initial-scale=1">


<head runat="server">


    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
    <script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?key=AIzaSyCLOv4XXeiLHi0SUzW0O3ZNCiq4jGiVHFI&sensor=false&libraries=places"></script>

    <link rel="stylesheet" href="AR/css/css.css">

    <link rel='stylesheet prefetch' href='http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css'>

    <link rel="stylesheet" href="AR/css/style.css">

    <style>
        #map {
            height: 450px;
            width: 721px;
            position: absolute;
            margin-left: 20px;
            top: 45px;
            left: 370px;
            display: none;
        }

        #Panel1 {
            display: none;
        }

        #right-panel {
            font-family: 'Roboto','sans-serif';
            line-height: 30px;
            padding-left: 10px;
        }

            #right-panel select, #right-panel input {
                font-size: 15px;
            }

            #right-panel select {
                width: 100%;
            }

            #right-panel i {
                font-size: 12px;
            }

        html, body {
            margin: 0;
            padding: 0;
        }

        .background-image {
            background-attachment: fixed;
            background-repeat: no-repeat;
            position: fixed;
            left: 0;
            right: 0;
            z-index: 1;
            display: block;
            background-image: url('taxiblur.jpg');
            background-size: 1300px 900px;
        }


        #right-panel {
            margin: 20px;
            border-width: 2px;
            width: 35%;
            float: left;
            text-align: left;
            padding-top: 20px;
        }
        /*#place1
        {
           width:335px;
        }*/
        #directions-panel {
            margin-top: 20px;
            background-color: #FFEE77;
            padding: 10px;
        }

        .displaynon {
            display: none;
        }

        #breaks {
            width: 100%;
        }

            #breaks li {
                width: 40%;
                float: left;
            }

        .auto-style6 {
            width: 98%;
            float: left;
            /*/*margin:-465px 450px;*/ */;
        }

        .auto-style16 {
            width: 98px;
            height: 34px;
            font-weight: bold;
        }

        .auto-style17 {
            height: 34px;
        }

        .auto-style23 {
            font-weight: bold;
        }

        .auto-style26 {
            width: 37%;
        }

        .auto-style27 {
            width: 106px;
        }

        .auto-style30 {
            width: 147px;
        }

        .auto-style33 {
            height: 34px;
            width: 106px;
            text-align: left;
        }

        .auto-style34 {
            width: 70px;
        }

        .auto-style45 {
            width: 70px;
            height: 45px;
        }

        .auto-style46 {
            width: 147px;
            height: 45px;
        }

        .auto-style47 {
            text-align: center;
            height: 45px;
        }

        .auto-style48 {
            height: 45px;
        }

        #footer {
            position: fixed;
            bottom: 0;
            width: 100%;
            height: 20px; /* Height of the footer */
            background: #359491;
            text-align: center;
        }

        #header {
            background-color: #359491;
            position: fixed;
            left: 0px;
            padding: 0px;
            top: 0px;
            height: 30px;
            width: 100%;
        }

        a:link {
            text-decoration: none;
        }

        a:hover {
            font-size: x-large;
        }

        li a {
            display: block;
            color: white;
            text-align: center;
            padding: 6px 16px;
            text-decoration: none;
            transition-duration: 0.4s;
        }


            li a:hover {
                background-color: green;
            }



        #menu ul {
            text-align: center;
            list-style: none;
            margin: 0;
            padding: 0;
            background-color: #359491;
        }

        #menu li {
            display: inline-block;
        }


        .auto-style49 {
            text-align: left;
        }


        .auto-style58 {
            width: 116px;
        }

        .auto-style61 {
            font-weight: bold;
            text-align: left;
        }

        .auto-style62 {
            width: 294px;
            text-align: left;
        }

        .auto-style63 {
            width: 294px;
        }

        .auto-style64 {
            width: 70px;
            height: 34px;
        }

        .auto-style65 {
            width: 147px;
            height: 34px;
        }

        .auto-style66 {
            font-weight: bold;
            text-align: left;
            height: 34px;
        }

        .auto-style67 {
            width: 294px;
            text-align: left;
            height: 34px;
        }

        .auto-style68 {
            text-align: left;
            height: 34px;
        }

        .auto-style70 {
            width: 106px;
            font-weight: bold;
        }

        .auto-style72 {
            width: 106px;
            text-align: left;
        }

        .auto-style25 {
            width: 200px;
        }

        .auto-style73 {
            zoom: 1;
            text-align: center;
        }

        .auto-style74 {
            float: left;
            width: 99%;
            display: inline-block;
            padding-right: 0;
        }

        .auto-style75 {
            text-align: center;
        }
    </style>

</head>
<body runat="server">
    <div class="container arcontainer">
        <div class="col-md-6">
            <div class="container arcontainer arcontainer2">
                  <div class="row"> <div class="col-half frm1" style=" font-size: x-small; color: #ffb118;"><h1 style=" border-left: solid #494a43; padding-left: 10px;color:#362712;">SELECT YOUR JOURNEY DETAILS</h1></div> <div class="col-half drnm"> <div class="input-group input-group-icon" style="margin-bottom: 0;"> <input name="TextBox27" id="TextBox27" readonly="readonly" type="text" class="ar-input" style="font-size: x-large;padding-left: 0;font-family: fantasy;height: 10px;background: #362712;color: white;"> <div class="input-icon" style=" color: white; font-size: x-large; line-height: 52px; height: 50px; left: -30px; width: 120px;"><i class="fa fa-gbp"></i></div> </div><br> </div> </div>

                <div class="row">
                    <%--<h4>JOURNEY DETAILS</h4>--%>
                    <div class="row">
                        <div class="col-half drnm">
                            <div class="input-group">
                                <input type="text" id="FromPP" placeholder="Door No" runat="server" clientidmode="static" onchange="mypickpoint(); " />
                            </div>
                        </div>
                        <div class="col-half frm1"  style=" padding-right: 0;">
                            <div class="input-group input-group-icon">
                                <input type="text" id="start" name="start" list="Airport name" runat="server" placeholder="Postcode / Address" clientidmode="static" onkeydown="uniKeyCode1(event)" onchange="calculateAndDisplayRoute(directionsService, directionsDisplay);" />
                                <datalist id="Airport name">
                              <option value="London Heathrow Airport TW6 1AP, Terminal-1" />
                                <option value="London Heathrow Airport TW6 1EW, Terminal-2 " />
                                <option value="London Heathrow Airport TW6 1QG, Terminal-3 " />
                                <option value="London Heathrow Airport TW6 3XA, Terminal-4 " />
                                <option value="London Heathrow Airport TW6 2GA, Terminal-5 " />
                                <option value="London Gatwick Airport RH6 0PJ, North Terminal " />
                                <option value="London Gatwick Airport RH6 0NP, South Terminal " />
                                <option value="Stansted Airport CM24 1RW" />
                                <option value="Luton Airport LU2 9QT" />
                                <option value="London City Airport E16 2PX" />
                                </datalist>
                                <div class="input-icon"><i class="fa fa-map-marker"></i></div>
                            </div>
                        </div>
                        
                        <div class="col-half drnm">
                            <div class="input-group">
                                <input type="text" id="ToPP" runat="server" placeholder="Door No" clientidmode="static" onchange="mypickpoint()" />
                            </div>
                        </div>
                        <div class="col-half frm1">
                            <div class="input-group input-group-icon">
                                <input type="text" id="end" name="end" list="Airport name" runat="server" placeholder="Postcode / Address" clientidmode="static" onkeydown="uniKeyCode(event)" onchange="calculateAndDisplayRoute(directionsService, directionsDisplay);" />
                                <div class="input-icon"><i class="fa fa-map-marker"></i></div>
                            </div>
                        </div>
                        
                    </div>
                    <div class="row">
                        <div class="col-half">
                            <div class="input-group input-group-icon" style="margin-bottom: 0;">
                                <ul id="waypoints" style="list-style-type: none; padding: 0; margin: 0;">
                                </ul>
                                <input id="place1" placeholder="Postcode/Address!" type="text"/>
                                <div class="input-icon"><i class="fa fa-map-marker"></i></div>
                            </div><br>
                        </div>
                        <div class="col-half">
                            <div class="input-group" style="margin: 0;">
                            <input id="remove1" onclick="removeplace1();" class="buthover" type="submit"  value="Remove Via!" />

<%--                            <input id="remove2" onclick="removeplace2(); removeplace2();" class="buthover" type="submit"  value="Remove!" />--%>



                                <%--<button id="newAutocomplete" onclick="return viaCountIncrement();"> </button>--%>
                                <input id="newAutocomplete" onclick="return viaCountIncrement();" type="submit" class="displaynon" value="Add Via" />
                                <%--<input id="addplace" class="auto-style73" onclick="return myVia();" type="button" value="Confirm!" />--%>
                                <input id="addplace" onclick="return myVia();" type="submit" class="displaynon" value="Confirm!" />
                                <%-- <input id="remove" class="auto-style3" onclick="viaCountDecrement()" style="background-color: #669999; color: #FFFFFF;" type="button" value="Remove!" /></strong>--%>
                                <input id="remove" onclick="viaCountDecrement()" type="submit" class="displaynon" value="Remove!" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>



        <form id="form1" runat="server">
            <asp:ScriptManager runat="server" ID="sm">
            </asp:ScriptManager>
            <div class="container arcontainer arcontainer2">
                <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                    <ContentTemplate>

                        <div class="row">
                            <div class="col-half">
                                <div class="input-group input-group-icon" style="margin: 0;">
                                    <asp:TextBox ID="date" runat="server" AutoPostBack="true" OnTextChanged="date_TextChanged" type="date" value="Booking Date"></asp:TextBox>
                                    <div class="input-icon"><i class="fa fa-calendar"></i></div>
                                </div><br>
                            </div>
                            <div class="col-half">
                                <div class="input-group input-group-icon" style="margin: 0;">
                                    <asp:TextBox ID="time" runat="server" AutoPostBack="true" OnTextChanged="time_TextChanged" type="time" value=""></asp:TextBox>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Label5" runat="server" CssClass="auto-style23" Font-Bold="True" Font-Italic="True" Font-Size="Small" ForeColor="#FF9900"></asp:Label>
                                    <div class="input-icon"><i class="fa fa-clock-o"></i></div>
                                </div>
                            </div>
                        </div>
                    </ContentTemplate>
                </asp:UpdatePanel>
                <div class="input-group">
                    <asp:UpdatePanel runat="server">
                        <ContentTemplate>
                            <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="Name" AutoPostBack="True" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:BuzybeezWebConnectionString %>" SelectCommand="SELECT [Name] FROM [Accounts]"></asp:SqlDataSource>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                    <br>
                    <br>
                    <br>
                    <br>
                </div>
            </div>

            <div class="container arcontainer arcontainer2">
                <asp:UpdatePanel ID="updatepanel6" runat="server">
                    <ContentTemplate>

                        <div class="row">
                            <h4>CHOOSE YOUR CAR</h4>
                            <div class="input-group">
                                <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="true" DataSourceID="SqlDataSource2" DataTextField="Name" DataValueField="Name" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged" OnTextChanged="DropDownList3_TextChanged">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:BuzybeezWebConnectionString %>" SelectCommand="SELECT [Name] FROM [Vehicle]"></asp:SqlDataSource>
                                <strong>
                                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:BuzybeezWebConnectionString %>" SelectCommand="SELECT [Name] FROM [Vehicle]"></asp:SqlDataSource>
                            </div>
                            <div class="row">
                                <div class="input-group">
                                    <div class="col-third ar-col">
                                        <div class="input-group input-group-icon" style="text-align: center">
                                            <asp:TextBox ID="TextBox5" class="ar-input" runat="server" AutoPostBack="true" OnTextChanged="TextBox5_TextChanged" placeholder="">4</asp:TextBox>
                                            <div class="input-icon"><i class="fa fa-user"></i></div>

                                            <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Small" ForeColor="Red"></asp:Label>

                                        </div>
                                    </div>
                                    <div class="col-third ar-col">
                                        <div class="input-group input-group-icon">
                                            <asp:TextBox type="text" runat="server" value="2" class="ar-input" ID="Luggage"></asp:TextBox>
                                            <div class="input-icon"><i class="fa fa-suitcase"></i></div>
                                        </div>
                                    </div>
                                    <div class="col-third ar-col">
                                        <div class="input-group input-group-icon">
                                            <asp:TextBox type="text" runat="server" value="2" class="ar-input" ID="Briefcase"></asp:TextBox>
                                            <div class="input-icon"><i class="fa fa-briefcase"></i></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        </strong>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </div>
            <br>
            <div class="container arcontainer arcontainer2 ardtl">
                <div class="row">
                    <h4>PASSENGER DETAILS</h4>
                    <div class="input-group input-group-icon" style="text-align: center">
                        <asp:TextBox ID="TextBox1" placeholder="Your Name" runat="server" pattern="[a-zA-Z]*\s*[a-zA-Z]*[a-zA-Z]*\s*[a-zA-Z]*(?!.*\s)"></asp:TextBox>
                        <div class="input-icon"><i class="fa fa-user"></i></div>
                    </div>
                </div>
                <div class="col-half">
                    <div class="input-group input-group-icon" style="text-align: center">
                        <asp:TextBox ID="TextBox2" runat="server" placeholder="xyz@gmail.com" OnTextChanged="TextBox2_TextChanged" pattern="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:TextBox>
                        <div class="input-icon"><i class="fa fa-envelope"></i></div>
                    </div>
                </div>
                <div class="col-half">
                    <div class="input-group input-group-icon" style="text-align: center">
                        <asp:TextBox ID="TextBox3" runat="server" placeholder="02084445555"></asp:TextBox>
                        <div class="input-icon"><i class="fa fa-phone-square"></i></div>
                        <strong></strong>
                    </div>
                </div>
                <br>
                <br>
                <br>
                <br>
            </div>
            <br>
            <div class="container arcontainer arcontainer2">
                <div class="auto-style73">
                    <h4 class="auto-style49">ANY COMMENTS</h4>
                    <div class="input-group input-group-icon" style="left: 1px; top: 0px">
                        <asp:TextBox ID="textArea" runat="server" placeholder="Any Comments (Optional)"></asp:TextBox>
                        <div class="input-icon"><i class="fa fa-comments"></i></div>
                    </div>
                    <asp:UpdatePanel ID="updatepanel9" runat="server">
                        <ContentTemplate>
                            <div class="input-group input-group-icon" style="left: 1px; top: 0px">
                                <asp:TextBox ID="TextBox6" runat="server" placeholder="Flight Number" Style="padding-left: 20px;"></asp:TextBox><br />
                            </div>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                    <br />
                    	<asp:Image ID="Image1" runat="server" ImageUrl="~/loading.gif"  style="display:none; height:150px;"/>
                    <div class="container arcontainer arcontainer2" style="background: #323232;">
                        <div class="row">

                                <div class="input-group" style="margin-bottom: 0;">
                                <asp:UpdatePanel ID="updatepanel1" runat="server">
                                    <ContentTemplate>
                                        <div class="col-half">
                                            <div class="input-group input-group-icon">
                                                <asp:TextBox ID="TextBox7" runat="server" class="ar-input" Style="font-size: x-large; padding-left: 0; font-family: fantasy; height: 10px;"></asp:TextBox>
                                                <div class="input-icon" style="font-size: x-large;margin: -15px 0 0 0;height: 78px;color: #3d356f;"><i class="fa fa-gbp"></i></div>
                                            </div>
                                        </div>
                                        <div class="col-half">
                                            <div class="input-group input-group-icon">
                                                <asp:Button ID="BooknowBtn" runat="server" class="buthover" OnClick="BooknowBtn_Click" OnClientClick="allinone()" Text="Book Now" Style="padding-left: 0;" />
                                            </div>
                                        </div>
                                        <br />
                                    </ContentTemplate>
                                </asp:UpdatePanel>
                                <%-- <asp:UpdatePanel ID="UpdatePanel9" runat="server">
                                        <ContentTemplate>--%>
                                <%--//mmm--%>
                                <strong></strong>
                                <%--  </ContentTemplate>
                                    </asp:UpdatePanel>--%>
                            </div>

                        </div>
                    </div>

                    <div class="input-group">
                        <br />
                        <asp:UpdatePanel ID="UpdatePanel8" runat="server">
                            <ContentTemplate>
                                <div class="auto-style75">
                                    <asp:Label ID="Label1" runat="server" CssClass="auto-style23" Font-Bold="True" Font-Italic="True" Font-Size="Small"></asp:Label>
                                    <asp:Label ID="Label4" runat="server" CssClass="auto-style23" Font-Bold="True" Font-Italic="True" Font-Size="Small" Text="Label"></asp:Label>
                                    <asp:Label ID="Label7" runat="server" CssClass="auto-style23" Font-Bold="True" Font-Italic="True" Font-Size="Small"></asp:Label>
                                    <br />
                                    <br />
                                </div>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </div>

                </div>
            </div>
            <div id="map">
            </div>
            <asp:Panel ID="Panel1" runat="server" Height="251px" Width="1130px">
                <table class="auto-style6">
                    <tr>
                        <td class="auto-style64"><strong>Account</strong></td>
                        <td class="auto-style65">&nbsp;</td>
                        <td class="auto-style66">Vehicle</td>
                        <td class="auto-style67">
                            <strong>
                                <asp:UpdatePanel ID="updatepanel2" runat="server">
                                    <ContentTemplate>
                                        <strong>
                                            <asp:Label ID="Label3" runat="server" Font-Size="Smaller" ForeColor="#009900">Passengers 4</asp:Label>
                                        </strong>
                                    </ContentTemplate>
                                </asp:UpdatePanel>
                            </strong>
                        </td>
                        <td class="auto-style33"><strong>&nbsp;Passenger</strong></td>
                        <td colspan="2" class="auto-style68"><strong>
                            <%-- <asp:UpdatePanel ID="updatepanel6" runat="server">
                              <ContentTemplate>
                                  <strong>
                                  <asp:TextBox ID="TextBox5" runat="server" AutoPostBack="true" OnTextChanged="TextBox5_TextChanged" placeholder="(Optional)" Width="16px" CssClass="auto-style57">4</asp:TextBox>
                                  <asp:Label ID="Label10" runat="server" Font-Size="Smaller" ForeColor="#009900">Passengers</asp:Label>
                                  &nbsp;\&nbsp;
                                  <asp:Label ID="Luggage" runat="server" Font-Size="Smaller" ForeColor="#009900">2 Luggage</asp:Label>
                                  &nbsp;\
                                  <asp:Label ID="Briefcase" runat="server" Font-Size="Smaller" ForeColor="#009900">2 Briefcase</asp:Label>
                                  </strong>
                              </ContentTemplate>
                          </asp:UpdatePanel>--%>
                        </strong></td>
                    </tr>
                    <tr>
                        <td class="auto-style34"><strong>Name</strong></td>
                        <td class="auto-style30">&nbsp;</td>
                        <td class="auto-style61">Pickup Date</td>
                        <td class="auto-style62"></td>
                        <td class="auto-style72"><strong>Pickup Time</strong></td>
                        <td class="auto-style49"></td>
                        <td rowspan="4">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style34"><strong>Phone</strong></td>
                        <td class="auto-style30">&nbsp;</td>
                        <td class="auto-style61"><strong>E-Mail</strong></td>
                        <td class="auto-style62">&nbsp;</td>
                        <td class="auto-style72"><strong>FlightNo</strong></td>
                        <td class="auto-style49">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style16">Comment</td>
                        <td class="auto-style17" colspan="5">&nbsp;&nbsp;

                          
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style34"><strong>Miles</strong></td>
                        <td class="auto-style30"><strong>
                            <asp:ImageButton ID="ImgCalculate" runat="server" Height="36px" ImageUrl="~/calculator.png" OnClick="ImgCalculate_Click1" OnClientClick="uniKeyCode1(event); myClosure(); FromLatLong(); ToLatLong(); Via1LatLong(); Via2LatLong(); Via3LatLong(); Via4LatLong(); Via5LatLong(); Via6LatLong(); Via7LatLong();" UseSubmitBehavior="False" Width="48px" />
                        </strong></td>
                        <td class="auto-style23"><strong>
                            <asp:TextBox ID="txtMiles" runat="server" BackColor="#99FF99" BorderColor="White" Width="86px"></asp:TextBox>
                        </strong></td>
                        <td class="auto-style63">
                            <asp:UpdatePanel ID="UpdatePanel4" runat="server">
                                <ContentTemplate>
                                    <%--//mmm--%><strong>
                                        <asp:Button ID="Final" runat="server" class="buthover" OnClientClick="myVia();" OnClick="Final_Click" Text="CheckFare" Width="72px" />
                                    </strong>
                                </ContentTemplate>
                            </asp:UpdatePanel>
                        </td>
                        <td class="auto-style70"></td>

                        <td class="auto-style58">&nbsp;</td>


                    </tr>
                    <tr>
                        <td class="auto-style45">&nbsp;</td>
                        <td class="auto-style46">
                            <asp:TextBox ID="txtJobRef" runat="server" BackColor="#99CCFF" BorderColor="White" Font-Bold="True" ForeColor="Black" Width="109px"></asp:TextBox>
                        </td>
                        <td class="auto-style47" colspan="4">&nbsp;</td>
                        <td class="auto-style48"></td>
                    </tr>
                    <tr style="display: none">
                        <td class="displaynon" colspan="2">
                            <div id="directions-panel">
                                <ul id="breaks" class="auto-style26">
                                </ul>
                            </div>
                        </td>
                        <td colspan="5" rowspan="2">
                            <asp:TextBox ID="ViaCount" runat="server">0</asp:TextBox>
                            <asp:TextBox ID="Via7" runat="server"></asp:TextBox>
                            <asp:TextBox ID="Via5" runat="server"></asp:TextBox>
                            <asp:TextBox ID="txtflag1" runat="server" Visible="true"></asp:TextBox>
                            <asp:TextBox ID="Via1" runat="server"></asp:TextBox>
                            <asp:TextBox ID="txtFlag" runat="server" Visible="true"></asp:TextBox>
                            <asp:TextBox ID="Via6" runat="server"></asp:TextBox>
                            <asp:TextBox ID="Via2" runat="server"></asp:TextBox>
                            <asp:TextBox ID="Via3" runat="server"></asp:TextBox>
                            <asp:TextBox ID="Via4" runat="server"></asp:TextBox>
                            <asp:Button ID="farebtn" runat="server" OnClick="farebtn_Click" OnClientClick="myClosure();" Text="Fixed Fare" Width="107px" />
                        </td>
                    </tr>
                    <tr style="display: none">
                        <td class="auto-style34">
                            <strong>
                                <asp:Button ID="CalculationBtn" runat="server" OnClick="CalculationBtn_Click" OnClientClick="twoinonefunction();" Text="Auto Calculate" Width="109px" />
                            </strong>
                        </td>
                        <td class="auto-style30">
                            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                            <asp:Button ID="Button5" runat="server" BackColor="#99FF99" Font-Bold="True" OnClick="Button5_Click" OnClientClick="myClosure();" Text="BOOK" Width="59px" />
                        </td>
                    </tr>
                    <tr style="display: none">
                        <td class="auto-style34">&nbsp;</td>
                        <td class="auto-style30">&nbsp;</td>
                        <td>&nbsp;</td>
                        <td class="auto-style63">&nbsp;</td>
                        <td class="auto-style27">
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BuzybeezWebConnectionString %>" SelectCommand="SELECT [Name] FROM [Accounts]"></asp:SqlDataSource>
                        </td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr style="display: none">
                        <td colspan="7">
                            <asp:TextBox ID="fromlat" runat="server"></asp:TextBox>
                            <asp:TextBox ID="tolat" runat="server"></asp:TextBox>
                            <asp:TextBox ID="Via1lat" runat="server">0.0</asp:TextBox>
                            <asp:TextBox ID="Via2lat" runat="server">0.0</asp:TextBox>
                            <asp:TextBox ID="Via3lat" runat="server">0.0</asp:TextBox>
                            <asp:TextBox ID="Via4lat" runat="server">0.0</asp:TextBox>
                            <asp:TextBox ID="Via5lat" runat="server">0.0</asp:TextBox>
                            <asp:TextBox ID="Via6lat" runat="server">0.0</asp:TextBox>
                            <asp:TextBox ID="Via7lat" runat="server">0.0</asp:TextBox>
                        </td>
                    </tr>
                    <tr style="display: none">
                        <td colspan="7">
                            <asp:TextBox ID="fromlon" runat="server"></asp:TextBox>
                            <asp:TextBox ID="tolon" runat="server"></asp:TextBox>
                            <asp:TextBox ID="Via1lon" runat="server">0.0</asp:TextBox>
                            <asp:TextBox ID="Via2lon" runat="server">0.0</asp:TextBox>
                            <asp:TextBox ID="Via3lon" runat="server">0.0</asp:TextBox>
                            <asp:TextBox ID="Via4lon" runat="server">0.0</asp:TextBox>
                            <asp:TextBox ID="Via5lon" runat="server">0.0</asp:TextBox>
                            <asp:TextBox ID="Via6lon" runat="server">0.0</asp:TextBox>
                            <asp:TextBox ID="Via7lon" runat="server">0.0</asp:TextBox>
                            <asp:TextBox ID="PPFrom" runat="server"></asp:TextBox>
                            <asp:TextBox ID="PPTo" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="7">
                            <asp:TextBox ID="TimeToDespatch" runat="server">text</asp:TextBox>
                        </td>
                    </tr>
                </table>
            </asp:Panel>


            <%-- <div id="btnBook">--%> <%--<asp:Button ID="btnBooking" runat="server" OnClick="BookingClick" Text="Booking" Width="280px" />--%><%--</div>--%>


      <script>
                $(document).ready(function () {
               //     alert();
                

                });
				   $("#form1").on("click", "#BooknowBtn", function() {
                  setTimeout(function () {

                        var val = $("#Label1").html();
                        var val1 = $("#Label4").html();
                        var val2 = $("#Label5").html();
                        var val3 = $("#Label7").html();
                        var val4 = $("#TextBox2").val();
                        var val5 = $("#TextBox1").val();
                        var re = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/
                        var re2=/^[a-zA-Z]+$/
                      
                        
                      if (val == "" && val1 == "" && val2 == "" && val3 == "" && re.test(val4)==true&&re2.test(val5)==true) {
                            $("#Image1").show();
                           //alert();
                       }
                    }, 500);
                  
                   
                    });

                function $_GET(param) {
                    var vars = {};
                    window.location.href.replace(location.hash, '').replace(
                        /[?&]+([^=&]+)=?([^&]*)?/gi, // regexp
                        function (m, key, value) { // callback
                            vars[key] = value !== undefined ? value : '';
                        }
                    );

                    if (param) {
                        return vars[param] ? vars[param] : null;
                    }
                    return vars;
                }

                $(window).load(function () {
                    $("#TextBox27").val("calculating");
                    setTimeout(function () {

                        //alert($("#TextBox7").val());
                        var f = $("#TextBox7").val()
                        $("#TextBox27").val(f);
                    }, 2500);
			   				                     var date = new Date();

                    var day = date.getDate();
                    var month = date.getMonth() + 1;
                    var year = date.getFullYear();

                    if (month < 10) month = "0" + month;
                    if (day < 10) day = "0" + day;

                    var today = year + "-" + month + "-" + day;
                    $("#date").attr("value", today);
					                    var today = year + "-" + month + "-" + day;
                    $("#date").attr("value", today);
                    var dt = new Date();
                   //var min1 = dt.getMinutes()+20;
                    dt.setMinutes(dt.getMinutes() + 15);

                    var time = dt.getHours() + ":" + dt.getMinutes();
                   // alert(time);
                    var min = dt.getMinutes();
                    if (min < 10) {
                        min = '0' + dt.getMinutes();
                    }
                    else {
                        min = dt.getMinutes();
                    }
					var hours=dt.getHours();
					 hours = (hours+24-2)%24; 
   
					
					
                   //alert(time);
                    $("#time").attr("value", dt.getHours() + ":" + min+ ":" +dt.getSeconds());
                   
                   //alert(time);
                    //$("#time").attr("value", time);
                    var check = $_GET('from');
                    var from = check.replace(/%20/g, " ");
                    //document.getElementById("start").value = from;
                    $("#start").val(from) ;
                    //document.getElementById("txtFlag").value = from;

                    var check1 = $_GET('to');
                    var to = check1.replace(/%20/g, " ");
                    //document.getElementById("end").value = to;
                    $("#end").val(to);
                    //document.getElementById("txtFlag").value = from;

                    var check2 = $_GET('date');
                    var date = check2.replace(/%20/g, " ");
              //      document.getElementById("date").value = date;
                    $("#date").val(date);
                    var check3 = $_GET('account');
                    var account = check3.replace(/%20g/, " ");
                 //   document.getElementById("DropDownList2").value = account;
                    $("#DropDownList2").val(to);

                    calculateAndDisplayRoute(directionsService, directionsDisplay);


                    var clickButton = document.getElementById("<%= Final.ClientID %>");
                    clickButton.click();

                    //var clickButton = document.getElementById("newAutocomplete");
                    //clickButton.click();

                    //var clickButton = document.getElementById("newAutocomplete");
                    //clickButton.click();




                    // viaclick();
                    allinone();


                });

                function allvia() {
                    Via1LatLong();
                }


                function allinone() {
                    uniKeyCode1(event); myClosure(); FromLatLong(); ToLatLong(); Via1LatLong();
                }

                function forfare() {
                    var ffare = document.getElementById("<%= TextBox7.ClientID %>");
                    document.getElementById('<%=TextBox7.ClientID %>').value = ffare;

                }
                function addbtnclick() {
                    var clickButton = document.getElementById("addplace");
                    clickButton.click();
                }

                count = 0;
                //Via count to asp textbox
                function viaCountIncrement() {
                    if (count < 7) {
                        count++;
                        document.getElementById('<%=ViaCount.ClientID %>').value = count;
                    }
                }
                function viaCountDecrement() {
                    if (count > 0) {
                        count--;
                        document.getElementById('<%=ViaCount.ClientID %>').value = count;
                            }
                        }

                        //Vias address to asp textbox
                        function myVia() {


                            var myvia1 = "";
                            myvia1 = document.getElementById('place1').value;
                            document.getElementById('<%=Via1.ClientID %>').value = myvia1;

                            var myvia2 = "";
                            myvia2 = document.getElementById('place2').value;
                            document.getElementById('<%=Via2.ClientID %>').value = myvia2;

                <%--    var myvia3 = "";
                    myvia3 = document.getElementById('place3').value;
                    document.getElementById('<%=Via3.ClientID %>').value = myvia3;

            var myvia4 = "";
            myvia4 = document.getElementById('place4').value;
            document.getElementById('<%=Via4.ClientID %>').value = myvia4;

            var myvia5 = "";
            myvia5 = document.getElementById('place5').value;
            document.getElementById('<%=Via5.ClientID %>').value = myvia5;

          var myvi6 = "";
          myvia6 = document.getElementById('place6').value;
          document.getElementById('<%=Via6.ClientID %>').value = myvia6;

          var myvia7 = "";
          myvia7 = document.getElementById('place7').value;
          document.getElementById('<%=Via7.ClientID %>').value = myvia7;--%>

                        }
                //from lat and long into asp textbox
                function FromLatLong() {

                    geocoder = new google.maps.Geocoder();

                    var address = document.getElementById("start").value;

                    geocoder.geocode({ address }, function (results, status) {
                        if (status == google.maps.GeocoderStatus.OK) {

                            var FromLat;
                            var FromLng;
                            FromLat = results[0].geometry.location.lat();
                            document.getElementById('<%=fromlat.ClientID%>').value = FromLat;
                            FromLng = results[0].geometry.location.lng();
                            document.getElementById('<%=fromlon.ClientID%>').value = FromLng;
                            //alert("Latitude: " + results[0].geometry.location.lat());
                            //alert("Longitude: " + results[0].geometry.location.lng());
             }
             else {
                            //  alert("Geocode was not successful for the following reason: " + status);
             }
                    });
     }
     //to lat and long into asp textbox
     function ToLatLong() {

         geocoder = new google.maps.Geocoder();

         var address = document.getElementById("end").value;

         geocoder.geocode({ address }, function (results, status) {
             if (status == google.maps.GeocoderStatus.OK) {
                 var ToLat;
                 var ToLng;
                 ToLat = results[0].geometry.location.lat();
                 document.getElementById('<%=tolat.ClientID%>').value = ToLat;
                 ToLng = results[0].geometry.location.lng();
                 document.getElementById('<%=tolon.ClientID%>').value = ToLng;
                 //alert("Latitude: " + results[0].geometry.location.lat());
                 //alert("Longitude: " + results[0].geometry.location.lng());
             }
             else {
                 //  alert("Geocode was not successful for the following reason: " + status);
             }
         });
     }
               
                //Via1 lat and long into asp textbox
     function Via1LatLong() {
         geocoder = new google.maps.Geocoder();
         var address = document.getElementById("place1").value;
         geocoder.geocode({ address }, function (results, status) {
             if (status == google.maps.GeocoderStatus.OK) {
                 var Lat;
                 var Lng;
                 Lat = results[0].geometry.location.lat();
                 document.getElementById('<%=Via1lat.ClientID%>').value = Lat;
                 Lng = results[0].geometry.location.lng();
                 document.getElementById('<%=Via1lon.ClientID%>').value = Lng;
             }
             else {
                 //    alert("Geocode was not successful for the following reason: " + status);
             }
         });
     }
     //Via2 lat and long into asp textbox
     function Via2LatLong() {
         geocoder = new google.maps.Geocoder();
         var address = document.getElementById("place2").value;
         geocoder.geocode({ address }, function (results, status) {
             if (status == google.maps.GeocoderStatus.OK) {
                 var Lat;
                 var Lng;
                 Lat = results[0].geometry.location.lat();
                 document.getElementById('<%=Via2lat.ClientID%>').value = Lat;
                 Lng = results[0].geometry.location.lng();
                 document.getElementById('<%=Via2lon.ClientID%>').value = Lng;
             }
             else {
                 // alert("Geocode was not successful for the following reason: " + status);
             }
         });
     }
     //Via3 lat and long into asp textbox
     function Via3LatLong() {
         geocoder = new google.maps.Geocoder();
         var address = document.getElementById("place3").value;
         geocoder.geocode({ address }, function (results, status) {
             if (status == google.maps.GeocoderStatus.OK) {
                 var Lat;
                 var Lng;
                 Lat = results[0].geometry.location.lat();
                 document.getElementById('<%=Via3lat.ClientID%>').value = Lat;
                    Lng = results[0].geometry.location.lng();
                    document.getElementById('<%=Via3lon.ClientID%>').value = Lng;
             }
             else {
                    // alert("Geocode was not successful for the following reason: " + status);
             }
            });
     }
     //Via4 lat and long into asp textbox
     function Via4LatLong() {
         geocoder = new google.maps.Geocoder();
         var address = document.getElementById("place4").value;
         geocoder.geocode({ address }, function (results, status) {
             if (status == google.maps.GeocoderStatus.OK) {
                 var Lat;
                 var Lng;
                 Lat = results[0].geometry.location.lat();
                 document.getElementById('<%=Via4lat.ClientID%>').value = Lat;
                 Lng = results[0].geometry.location.lng();
                 document.getElementById('<%=Via4lon.ClientID%>').value = Lng;
             }
             else {
                 //  alert("Geocode was not successful for the following reason: " + status);
             }
         });
     }
     //Via5 lat and long into asp textbox
     function Via5LatLong() {
         geocoder = new google.maps.Geocoder();
         var address = document.getElementById("place5").value;
         geocoder.geocode({ address }, function (results, status) {
             if (status == google.maps.GeocoderStatus.OK) {
                 var Lat;
                 var Lng;
                 Lat = results[0].geometry.location.lat();
                 document.getElementById('<%=Via5lat.ClientID%>').value = Lat;
                    Lng = results[0].geometry.location.lng();
                    document.getElementById('<%=Via5lon.ClientID%>').value = Lng;
             }
             else {
                    //  alert("Geocode was not successful for the following reason: " + status);
             }
            });
     }
     //Via6 lat and long into asp textbox
     function Via6LatLong() {
         geocoder = new google.maps.Geocoder();
         var address = document.getElementById("place6").value;
         geocoder.geocode({ address }, function (results, status) {
             if (status == google.maps.GeocoderStatus.OK) {
                 var Lat;
                 var Lng;
                 Lat = results[0].geometry.location.lat();
                 document.getElementById('<%=Via6lat.ClientID%>').value = Lat;
                    Lng = results[0].geometry.location.lng();
                    document.getElementById('<%=Via6lon.ClientID%>').value = Lng;
             }
             else {
                    // alert("Geocode was not successful for the following reason: " + status);
             }
            });
     }
     //Via7 lat and long into asp textbox
     function Via7LatLong() {
         geocoder = new google.maps.Geocoder();
         var address = document.getElementById("place7").value;
         geocoder.geocode({ address }, function (results, status) {
             if (status == google.maps.GeocoderStatus.OK) {
                 var Lat;
                 var Lng;
                 Lat = results[0].geometry.location.lat();
                 document.getElementById('<%=Via7lat.ClientID%>').value = Lat;
                    Lng = results[0].geometry.location.lng();
                    document.getElementById('<%=Via7lon.ClientID%>').value = Lng;
             }
             else {
                    //    alert("Geocode was not successful for the following reason: " + status);
             }
            });
     }

     //To and from address to asp textbox
     function myClosure() {

         var canyousee = document.getElementById('start').value;
         document.getElementById('<%=txtFlag.ClientID %>').value = canyousee;

            var canyousee1 = document.getElementById('end').value;
            document.getElementById('<%=txtflag1.ClientID %>').value = canyousee1;


     }
  function mypickpoint() {
         var frompp = document.getElementById('FromPP').value;
         document.getElementById('<%=PPFrom.ClientID%>').value = frompp;

            var topp = document.getElementById('ToPP').value;
            document.getElementById('<%=PPTo.ClientID%>').value = topp;
     }
                //$("#start,#end").change(function () {
                //    alert("Changed!");
                //    $.ajax({
                //        type: "POST",
                //        contentType: "application/json; charset=utf-8",
                //        url: "BookingPortal.aspx/CalculationBtn_Click",
                //        //  data: {userdata:"sadsadsd"},

                //        data: JSON.stringify(abc),
                //        datatype: "json",
                //        success: function (xmlhttprequest, textstatus, errorthrown) {
                //            alert(errorthrown);
                //            console.log("error: " + errorthrown);
                //        },
                //        error: function (xmlhttprequest, textstatus, errorthrown) {
                //            alert(errorthrown);
                //            console.log("error: " + errorthrown);
                //        }


                //    });
                //});

     var popup;
     var popup1;
     function SelectName() {
         popup = window.open("Popup.html", "Popup", "width=300,height=100");
         //alert(popup);
         popup.focus();
     }
     function SelectName1() {
         popup1 = window.open("popupto.html", "Popup", "width=300,height=100");
         //alert(popup);
         popup1.focus();
     }

     function SelectLocateMeFrom() {
         popup1 = window.open("MapsTo.aspx", "MAPS", "width=800,height=400");
         //alert(popup);
         popup1.focus();
         return false
     }
     function SelectLocateMeTo() {

         popup1 = window.open("Maps.aspx", "MAPS", "width=800,height=400");
         //alert(popup);
         popup1.focus();
         return false
     }

     function uniKeyCode(event) {
         //e.preventDefault(); // Otherwise the form will be submitted
         var k = event.keyCode;
       //  calculateAndDisplayRoute(directionsService, directionsDisplay);
         //alert(k);


         if (k == 13) {
             //    alert("inside");
             if ((document.getElementById('start').value != "") && document.getElementById('end').value!="")
                 calculateAndDisplayRoute(directionsService, directionsDisplay);
             $("#TextBox27").val("calculating");
             setTimeout(function () {

                 //alert($("#TextBox7").val());
                 var f = $("#TextBox7").val()
                 $("#TextBox27").val(f);
             }, 1500);
         }
        else if (k == 45) {
             //    alert("inside");
             SelectName();
         }
         else if (k == 35) {

             SelectLocateMeTo();
         }



       //  calculateAndDisplayRoute(directionsService, directionsDisplay);
         //alert("FORM WAS SUBMITTED");
     }

     function farebtnclick() {
         myClosure();
         var clickButton = document.getElementById("<%= Final.ClientID %>");
            clickButton.click();
            despatchroute();
        }




                function uniKeyCode1(event) {
                
            //e.preventDefault(); // Otherwise the form will be submitted
            var k = event.keyCode;
       //      calculateAndDisplayRoute(directionsService, directionsDisplay);
            //alert(k);
            if (k == 13) {
                //    alert("inside");
                if ((document.getElementById('start').value != "") && document.getElementById('end').value != "")
                    calculateAndDisplayRoute(directionsService, directionsDisplay);
                $("#TextBox27").val("calculating");
                setTimeout(function () {

                    //alert($("#TextBox7").val());
                    var f = $("#TextBox7").val()
                    $("#TextBox27").val(f);
                }, 1500);

            }
else if (k == 45) {
                //    alert("inside");
                SelectName1();
            }
            else if (k == 35) {
                SelectLocateMeFrom();

            }
          //  calculateAndDisplayRoute(directionsService, directionsDisplay);
                    //alert("FORM WAS SUBMITTED");
        }


        var directionsService = new google.maps.DirectionsService;
        var directionsDisplay = new google.maps.DirectionsRenderer;
        function initMap() {
            directionsService = new google.maps.DirectionsService;
            directionsDisplay = new google.maps.DirectionsRenderer;
            var map = new google.maps.Map(document.getElementById('map'), {
                zoom: 9,
                center: {


                    lat: 51.5074,
                    lng: 0.1278
                }
            });
            directionsDisplay.setMap(map);


            var start = new google.maps.places.Autocomplete(
              /** @type {!HTMLInputElement} */
              (document.getElementById('start')), {
                  types: ['geocode'],
                  componentRestrictions: { country: "uk" }
              });

            var end = new google.maps.places.Autocomplete(
              /** @type {!HTMLInputElement} */
              (document.getElementById('end')), {
                  types: ['geocode'],
                  componentRestrictions: { country: "uk" }
                
            
              });
            var place1 = new google.maps.places.Autocomplete(
                  /** @type {!HTMLInputElement} */
                  (document.getElementById('place1')), {
                      types: ['geocode'],
                      componentRestrictions: { country: "uk" }
                  });
            var end = new google.maps.places.Autocomplete(
             /** @type {!HTMLInputElement} */
             (document.getElementById('place1')), {
                 types: ['geocode'],
                 componentRestrictions: { country: "uk" }
             });

            document.getElementById('addplace').addEventListener('click', function () {
                addplace();
            });
            document.getElementById('remove').addEventListener('click', function () {
                //  addplace();
                remoev();//remove();
            });
            //document.getElementById('end').addEventListener('keypress', function (e) {
            //    var key = e.which || e.keyCode;
            //    if (key === 13) { // 13 is enter
            //        // code for enter
            //        calculateAndDisplayRoute(directionsService, directionsDisplay);
            //    }
            //});



            //document.getElementById('start').addEventListener('blur', function () {

            //    calculateAndDisplayRoute(directionsService, directionsDisplay);
            //    myClosure();
            //    farebtnclick();
            //});

            //document.getElementById('end').addEventListener('blur', function () {
            //    calculateAndDisplayRoute(directionsService, directionsDisplay);
            //    myClosure();
            //    farebtnclick();
            //});
            

            //document.getElementById('place1').addEventListener('blur', function () {
            //    calculateAndDisplayRoute(directionsService, directionsDisplay);
            //    myClosure();
            //    addbtnclick();
            //    myVia();
            //    farebtnclick();

            //});

            //document.getElementById('place2').addEventListener('blur', function () {
            //    calculateAndDisplayRoute(directionsService, directionsDisplay);
            //    myClosure();
            //    addbtnclick();
            //    myVia();
            //    farebtnclick();

            //});




            document.getElementById('DropDownList1').addEventListener('click', function () {
                calculateAndDisplayRoute(directionsService, directionsDisplay);
            });
        }

    $("#form1").on("change", "#DropDownList3", function () {
          
            calculateAndDisplayRoute(directionsService, directionsDisplay);
          //  alert()
            $("#TextBox27").val("calculating");
             setTimeout(function () {

                 //alert($("#TextBox7").val());
                  var f = $("#TextBox7").val()
               $("#TextBox27").val(f);
               }, 1000);
        });
        var b = 1;

        var totalAC = 0;
        var currentInp = "";
                //comment by me
        //$(document).on('click', "#waypoints input[type=text]", function () {
        //    currentInp = $(this).attr("id");

        //    var placeBox = new google.maps.places.Autocomplete(document.getElementById(currentInp));
        //});

        //$("#newAutocomplete").click(function () {

        //    //alert(totalAC);
        //    if (b <= 10) {

        //        totalAC = $("#waypoints input").length;


        //        totalAC = totalAC + 1;

        //        var codeVar = "<li><input id='place" + totalAC + "' placeholder='Via' list='Airport name' type='text' /></li>";

        //        $("#waypoints").append(codeVar);
        //        b++;
        //    }


        //});




        function viaclick() {
            if (b <= 4) {

                totalAC = $("#waypoints input").length;


                totalAC = totalAC + 1;

                var codeVar = "<li><input id='place" + totalAC + "' placeholder='Postcode/Address!' type='text' /></li>";

                $("#waypoints").append(codeVar);
                b++;
            }
        }

        var waypts = [];
        var inps = "";
        function addplace() {

            inps = $('#waypoints input[type=text]');
            // alert(inps.length);
            $('#breaks').empty();
            for (var i = 1; i <= inps.length; i++) {
                var a = $('#waypoints input[type=text]#place' + i);
                //  alert(a);
                if (a.val() != "" || a.val() != "") {
                    $('#breaks').append('<li>' + a.val() + '</li>');
                    waypts.push({
                        location: a.val(),
                        stopover: true
                    });
                }



            }
            calculateAndDisplayRoute(directionsService, directionsDisplay);
        }
        function remoev() {

            waypts.pop();
            var i = inps.length;
            var a = $('#waypoints input[type=text]#place' + i);
            $('#breaks li:last-child').remove();
            $('#waypoints li:last-child').remove();
            var waypts = [];
            calculateAndDisplayRoute(directionsService, directionsDisplay);
            //$('#breaks').remove('<li>' + a.val() + '</li>');g
            //$('#breaks')
            //breaks

        }

        function removeplace1() {

            waypts.pop();
			waypts = [];
            //var i = inps.length;
            var a = $('#waypoints input[type=text]#place1');
            //$('#breaks li:last-child').remove();
            //$('#waypoints li:last-child').remove();
            document.getElementById('place1').value = "";
            //$('#breaks').remove('<li>' + a.val() + '</li>');
            //var clickButton = document.getElementById("newAutocomplete");
            //clickButton.click();
            calculateAndDisplayRoute(directionsService, directionsDisplay);
            $("#TextBox27").val("calculating");
            setTimeout(function () {

                //alert($("#TextBox7").val());
                var f = $("#TextBox7").val()
                $("#TextBox27").val(f);
            }, 1000);


        }

        //function removeplace2() {

        //    waypts.pop();
        //    var i = inps.length;
        //    var a = $('#waypoints input[type=text]#place2');
        //     $('#breaks li:last-child').remove();
        //     $('#waypoints li:last-child').remove();
        //    document.getElementById('place2').value = "";
        //    $('#breaks').remove('<li>' + a.val() + '</li>');
        //    var clickButton = document.getElementById("newAutocomplete");
        //    clickButton.click();
        //    calculateAndDisplayRoute(directionsService, directionsDisplay);

        //    $('#breaks')
        //    breaks

        //}

        //if (document.cookie.indexOf("CrewCentreSession=Valid") == -1) {
        //    location.href = "/main.html";
                //}

        //mmm
        var officeadd = "Ledrington Road, London SE19 2BF, United Kingdom";
        //function despatchroute(directionsService1, directionsDisplay1) {
        //    directionsService.route({
        //        origin:officeadd,
        //        destination: document.getElementById('start').value,
        //        waypoints:waypoints,
        //        optimizeWaypoints: true,
        //        travelMode: google.maps.TravelMode.DRIVING
        //    }, function (response1, status1) {
        //        if (status1 === google.maps.DirectionsStatus.OK) {
        //            directionsDisplay.setDirections(response1);
        //            var route = response1.routes[0];
        //            var summaryPanel = document.getElementById('directions-panel');
        //            summaryPanel.innerHTML = '';
        //            // For each route, display summary information.
        //            for (var i = 0; i < route.legs.length; i++) {
        //                var routeSegment = i + 1;
        //                summaryPanel.innerHTML += '<b>Route Segment: ' + routeSegment +
        //                  '</b><br>';
        //                summaryPanel.innerHTML += route.legs[i].start_address + ' to ';
        //                summaryPanel.innerHTML += route.legs[i].end_address + '<br>';
        //                summaryPanel.innerHTML += route.legs[i].distance.text + '<br><br>';
        //            }
        //            timetodespatch(response1);
        //        } else {
        //       //     window.alert("directions response " + status);
        //        }
        //    });
        //}

        function timetodespatch(result)
        {
            var totalDist = 0;
            var totalTime = 0;
            var myroute = result.routes[0];
            for (i = 0; i < myroute.legs.length; i++) {
                totalDist += myroute.legs[i].distance.value;
                totalTime += myroute.legs[i].duration.value;
            }
            totalDist = totalDist * 0.621371 / 1000;
            totaltime = (totalTime / 60).toFixed(2);
            document.getElementById('<%=TimeToDespatch.ClientID %>').value = totaltime;
       //   document.getElementById("total").innerHTML = "total distance is: " + totalDist + " miles<br>Total Fare is (£) : " + calc_fare + " <br>total time is: " + (totalTime / 60).toFixed(2) + " minutes";
        }



               

                function calculateAndDisplayRoute(directionsService, directionsDisplay) {
                    //alert(directionsDisplay);
                    // Console.log(directionsDisplay);

            directionsService.route({
                origin: document.getElementById('start').value,
                destination: document.getElementById('end').value,
                avoidHighways: true,
                provideRouteAlternatives: true,
                avoidTolls: true,
                waypoints: waypts,
                optimizeWaypoints: true,
                travelMode: google.maps.TravelMode.DRIVING
            }, function (response, status) {
                if (status === google.maps.DirectionsStatus.OK) {
                    directionsDisplay.setDirections(response);
                    var route = response.routes[0];
                    var summaryPanel = document.getElementById('directions-panel');
                    summaryPanel.innerHTML = '';
                    // For each route, display summary information.
                    for (var i = 0; i < route.legs.length; i++) {
                        var routeSegment = i + 1;
                        summaryPanel.innerHTML += '<b>Route Segment: ' + routeSegment +
                          '</b><br>';
                        summaryPanel.innerHTML += route.legs[i].start_address + ' to ';
                        summaryPanel.innerHTML += route.legs[i].end_address + '<br>';
                        summaryPanel.innerHTML += route.legs[i].distance.text + '<br><br>';
                     ///   alert(route.legs[i].distance.text);
                        
                       // alert(document.getElementById('start').value);
                      //  alert(document.getElementById('end').value);
                    }
					 timetodespatch(response);
                    computeTotalDistance(response);

                    var clickButton = document.getElementById("<%= Final.ClientID %>");
                 clickButton.click();
                 allvia();

                 //  farebtnclick();
             } else {
                 //window.alert($("#start").val());
             }
         });
                }
                //function WhichButton(event) {
                // //   alert("You pressed button: " + event.button)
                //    if (document.getElementById('start').value != "" && document.getElementById('end').value != "") {
                //        calculateAndDisplayRoute(directionsService, directionsDisplay);
                //    }
                   
                  //}
                  $("#TextBox7").change(function () {
                      //    $("#TextBox27").val($(this).val());
                      alert();
                  });
                $('#start,#end').change(function () {
                    if (document.getElementById('start').value != "" && document.getElementById('end').value != "") {
                        $("#TextBox7").val(' ');
                        setTimeout(function () {
                            $("#TextBox7").val('calculating ');
                         //   $("#TextBox27").val('calculating ');
                            calculateAndDisplayRoute(directionsService, directionsDisplay);
                        //    $("#TextBox27").val($("#TextBox7").val());
                          //  alert($("#TextBox7").val());
                        }, 2000);
                        $("#TextBox27").val("calculating");
                        setTimeout(function () {
                         
                            // alert($("#TextBox7").val());
                            var f=$("#TextBox7").val()
                          //  alert("1")
                            $("#TextBox27").val(f);
                            setTimeout(function () {
                           //     alert("nested");
                                var f = $("#TextBox7").val();
                                $("#TextBox27").val(f);
                            },1000)
                          
                        }, 3000);
                    }
                });
               
                $("#place1").change(function () {
                    $("#TextBox7").val('calculating ');
                   // $("#TextBox27").val('calculating ');
                    setTimeout(function () {
                       
                        //alert();
                        waypts.push({
                            location: $("#place1").val(),
                            stopover: true
                        });
                        calculateAndDisplayRoute(directionsService, directionsDisplay);
                       // $("#TextBox27").val($("#TextBox7").val());
                      //  myClosure();
                       // addbtnclick();
                        //myVia();
                    //   farebtnclick();
                    }, 1000);
                    $("#TextBox27").val("  calculating");
                    setTimeout(function () {

                         //alert($("#TextBox7").val());
                        var f = $("#TextBox7").val()
                        $("#TextBox27").val(f);
                    }, 2500);
                })



                function uniKeyCode2(event) {

                    //e.preventDefault(); // Otherwise the form will be submitted
                    var k = event.keyCode;
                    //      calculateAndDisplayRoute(directionsService, directionsDisplay);
                    //alert(k);
                    if (k == 13) {
                        //    alert("inside");
                        if ((document.getElementById('start').value != "") && document.getElementById('end').value != "")
                            waypts.push({
                                location: $("#place1").val(),
                                stopover: true
                            });
                        calculateAndDisplayRoute(directionsService, directionsDisplay);
                        $("#TextBox27").val("calculating");
                        setTimeout(function () {

                            //alert($("#TextBox7").val());
                            var f = $("#TextBox7").val()
                            $("#TextBox27").val(f);
                        }, 1500);


                            //calculateAndDisplayRoute(directionsService, directionsDisplay);
                    }

                    //  calculateAndDisplayRoute(directionsService, directionsDisplay);
                    //alert("FORM WAS SUBMITTED");
                }




                //if (document.getElementById('start').value != "" && document.getElementById('end').value != "") {
                //    $("#TextBox7").val(' ');
                //    alert();
                //    setTimeout(function () {
                //        $("#TextBox7").val('calculating ');
                //        calculateAndDisplayRoute(directionsService, directionsDisplay);
                //        myClosure();
                //        addbtnclick();
                //        myVia();
                //        farebtnclick();
                //    }, 2000);
                //}
                //$('#start').keyup(function () {
                //    //alert('test');
                //   // $("TextBox7").val('Click Update Button to g');

                //    calculateAndDisplayRoute(directionsService, directionsDisplay);
                //    myClosure();
                //    farebtnclick();
                  
                //});
                //$('#end').keyup(function () {
                //    //alert('test');
                //  //  $("txtflag1").val($('#end').val());
                //    calculateAndDisplayRoute(directionsService, directionsDisplay);
                //    myClosure();
                //    farebtnclick();
                    
                //});
               // $("#start").keypress(function () {
               //     $("txtFlag").val($('#start').val());
               ////     calculateAndDisplayRoute(directionsService, directionsDisplay);
               //  //   myClosure();
               //    // farebtnclick();
               //   //  alert($("#txtFlag").val());
               //    // $('#TextBox7').hide();
               // });
               // $("#end").keypress(function () {

               //     $("txtflag1").val($('#end').val());
               //     //calculateAndDisplayRoute(directionsService, directionsDisplay);
               //     //myClosure();
               //     //farebtnclick();
               //  //   $('#TextBox7').hide();
                // });
               
           //     $("#start")
              
           //   .mouseleave(function () {

                  
           //       if ($("#start").val() != "" && $("end").val() != "") {
           //       //    alert("leave");
           //       calculateAndDisplayRoute(directionsService, directionsDisplay);
           //       }
           //   });
           //     $("#end")

           //.mouseleave(function () {


           //    if ($("#start").val() != "" && $("end").val() != "") {
           //      //  alert("leave");
           //        calculateAndDisplayRoute(directionsService, directionsDisplay);
           //    }
           //});

                $("#Button1").click(function () {
                    alert();
                    calculateAndDisplayRoute(directionsService, directionsDisplay);
                    //myClosure();
                    //farebtnclick();

                })

     var calc_fare = 0;

     //mmm
     //  var rateperkm = 2.5;
     //  var minimum_fare = 5;
     //var car = "";
     function twoinonefunction() {

         //computeTotalDistance(),myClosure()
         // Call function1 and save the return value.
         var success1 = myClosure();
         // Call function2 and save the return value.
         var success2 = computeTotalDistance();

         // Return the logical combination of the two values:
         // If both are true, return true, otherwise return false.
         return success1 && success2;
     }



     function computeTotalDistance(result) {
         car = document.getElementById('DropDownList3').value;

         var totalDist = 0;
         var totalTime = 0;
         var totaldisround = 0;
         var myroute = result.routes[0];
         for (i = 0; i < myroute.legs.length; i++)
         {
             totalDist += myroute.legs[i].distance.value;
             totalTime += myroute.legs[i].duration.value;
         }
         totalDist = totalDist * 0.621371 / 1000;
         totaldisround = totalDist.toFixed(2);
         //round(totalDist, 2);
         document.getElementById('<%=txtMiles.ClientID %>').value = totaldisround;
            farebtnclick();
            allvia();


              <%--    
         if ('<%=DropDownList3.SelectedIndex%>' == 1) {
                calc_fare = (totalDist) * '<%=TextBox7.Text%>';
                '<%=TextBox7.Text%>' = calc_fare;
            }
            }--%>

            if (car == 1) {
                calc_fare = (totalDist) * rateperkm;

            }

            else if (car == 2) {
                calc_fare = (totalDist) * (rateperkm * 5);

            }
            else if (car == 3) {
                calc_fare = (totalDist) * (rateperkm * 8);

            }

            if (calc_fare < minimum_fare) {
                calc_fare = minimum_fare;
            }
            document.getElementById("total").innerHTML = "total distance is: " + totalDist + " miles<br>Total Fare is (£) : " + calc_fare + " <br>total time is: " + (totalTime / 60).toFixed(2) + " minutes";
        }


        google.maps.event.addDomListener(window, 'load', initMap);

        var clickButton = document.getElementById("newAutocomplete");
        clickButton.click();
            </script>

        </form>
    </div>
</body>
</html>
