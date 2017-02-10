<%@ Page Language="C#" AutoEventWireup="true"  CodeBehind="BookingPortal.aspx.cs" Inherits="WEB.BookingPortal"  %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

    
<head runat="server">

  
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
  <script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?key=AIzaSyCLOv4XXeiLHi0SUzW0O3ZNCiq4jGiVHFI&sensor=false&libraries=places"></script>

   
   <style>

        
        #map {
        height: 80%;
        float: right;
        width: 60%;
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
        height: 100%;
        margin: 0;
        padding: 0;
      }
    
      #right-panel {
        margin: 20px;
        border-width: 2px;
        width: 20%;
        float: left;
        text-align: left;
        padding-top: 20px;
      }
      #directions-panel {
        margin-top: 20px;
        background-color: #FFEE77;
        padding: 10px;
      }
#breaks{width:100%;}
#breaks li{width:100%;float:left;}
       .auto-style1 {
           height: 1528px;
           width: 24%;
           margin-right: 92px;
       }
       .auto-style2 {
           width: 187px;
           margin-right: 0px;
       }
       .auto-style3 {
           width: 79px;
       }

       .auto-style4 {
           text-align: center;
       }

    </style>

</head>
<body>
   
   <div id="map">
</div>
 
<div id="right-panel" class="auto-style1">
  <div class="auto-style2">
      <h1> Booking Portal</h1>
     
      <%--<p> Search Postcodes via Maps</p><button> <a href ="Show me.aspx" >Search Postcdes </a></button>
     <p>Locate Your Places</p><button> <a href="Maps.aspx">Locate Places</a></button>--%>


<script type="text/javascript">

    //function twfnc() {
    //    myClosure();
    //    ar();
    //}
    //mmm
    count = 0;
    function viaCountIncrement()
    {
          if(count < 7)
          {
              count++;
        document.getElementById('<%=ViaCount.ClientID %>').value = count;
        }
    }
      function viaCountDecrement()
    {
          if(count > 0)
          {
              count--;
        document.getElementById('<%=ViaCount.ClientID %>').value = count;
        }
    }

    function myVia()
    {
        var myvia1 = document.getElementById('place1').value;
        document.getElementById('<%=Via1.ClientID %>').value = myvia1;

        var myvia2 = document.getElementById('place2').value;
        document.getElementById('<%=Via2.ClientID %>').value = myvia2;

        var myvia3 = document.getElementById('place3').value;
        document.getElementById('<%=Via3.ClientID %>').value = myvia3;

        var myvia4 = document.getElementById('place4').value;
        document.getElementById('<%=Via4.ClientID %>').value = myvia4;

        var myvia5 = document.getElementById('place5').value;
        document.getElementById('<%=Via5.ClientID %>').value = myvia5;

        var myvia6 = document.getElementById('place6').value;
        document.getElementById('<%=Via6.ClientID %>').value = myvia6;

        var myvia7 = document.getElementById('place7').value;
        document.getElementById('<%=Via7.ClientID %>').value = myvia7;

    }
    function myClosure()
    {
        
        var canyousee = document.getElementById('start').value;

         document.getElementById('<%=txtFlag.ClientID %>').value = canyousee;
        
        var canyousee1 = document.getElementById('end').value;

      document.getElementById('<%=txtflag1.ClientID %>').value = canyousee1;

        <%--  alert(document.getElementById('<%=txtflag1.ClientID %>').value);
          alert(document.getElementById('<%=txtflag1.ClientID %>').value);--%>

    }
   

    function ar() {
        calculateAndDisplayRoute(directionsService, directionsDisplay);
    }

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
        popup1 = window.open("MapsTo.aspx","MAPS", "width=1200,height=600");
        //alert(popup);
        popup1.focus();
        return false
    }
    function SelectLocateMeTo() {
        popup1 = window.open("Maps.aspx", "MAPS", "width=1200,height=600");
        //alert(popup);
        popup1.focus();
        return false
    }
</script>

    
         
        
        </br>              
      <b>From</b> 
      <input type="text" id="start"  name="start"   placeholder="where to begin?" runat="server" clientidmode ="static" onkeydown="uniKeyCode(event)" />
      
      </p>
    <p> <b>Vias</b>
    </p>
    <p>
      <ul style="list-style-type:none; padding: 0; margin: 0;" id="waypoints"></ul>
    <ul id="breaks"></ul>
      <button id="newAutocomplete"  onclick="return viaCountIncrement();">Add One</button>
      <input type="button" id="addplace" value="Confirm!" onclick="return myVia();"/>
        <input type="button" id="remove"  value="Remove!" class="auto-style3" onclick="viaCountDecrement()"/>

        
</tr>
    </p>
    <p>
      <b>To </b>
      <input type="text" id="end" name="end" runat="server" placeholder="Where to end?"   clientidmode ="static" onkeydown="uniKeyCode1(event)" />
    </p>
    <p>&nbsp;</p>
      
         &nbsp;<%--<input type="button" id="Get Route!" value="Get Route!"/>--%>
          
         
       
          </div>
    

    

  <div id="directions-panel"></div>

    
        <div id="total"></div><br />
      <form id="form1" runat="server" class="auto-style4">   
          <div class="auto-style4">
               Miles :<br />
              <asp:TextBox ID="txtMiles" runat="server"></asp:TextBox>
                <asp:TextBox ID="ViaCount" runat="server">0</asp:TextBox>
               <asp:TextBox ID="Via1" runat="server"></asp:TextBox>
                <asp:TextBox ID="Via2" runat="server"></asp:TextBox>
                <asp:TextBox ID="Via3" runat="server"></asp:TextBox>
                <asp:TextBox ID="Via4" runat="server"></asp:TextBox>
                <asp:TextBox ID="Via5" runat="server"></asp:TextBox>
                <asp:TextBox ID="Via6" runat="server"></asp:TextBox>
                <asp:TextBox ID="Via7" runat="server"></asp:TextBox>

         <br />

&nbsp;<asp:TextBox ID="txtFlag" runat="server" Visible="true"></asp:TextBox>
         
          &nbsp;<asp:TextBox ID="txtflag1" runat="server" Visible="true"></asp:TextBox>
         <br />
         Name :<br />
&nbsp;<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
              <br />
         <br />
         Email :<br />
         <asp:TextBox ID="TextBox2" runat="server" ></asp:TextBox>
              <br />
              <br />
              <br />
         <br />
         PhoneNo:<br />
         <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
              <br />
         <br />
         Flight No:<br />
         <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
              <br />
         <br />
         Booking Date Time:<br />
         
        <%-- <input type="date" id="date" value="Booking Date" /> --%>
       <asp:TextBox ID="date" type="date" runat="server" value="Booking Date"></asp:TextBox>
              <br />
              <br />
              <%--  <input type="time" id="time" value="Booking Time" />--%>
       <asp:TextBox ID="time" type="time" runat="server" value="Booking Time"></asp:TextBox>


              <br />


<br />
         How many Passengers:<br />
         <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
         <br />
         Comment :<br />
              <%--<textarea TextBox="TextArea1" cols="20" name="S1" rows="2"></textarea><br />--%>
         <asp:TextBox ID="textArea" runat="server" Width="261px"></asp:TextBox>
        
          Select Account:<br />
         <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="Name">
         </asp:DropDownList>
         <br />
         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BuzybeezWebConnectionString %>" SelectCommand="SELECT [Name] FROM [Accounts]"></asp:SqlDataSource>
         <asp:Label ID="labelFrom" runat="server" Text="From"></asp:Label>
           
          <asp:Label ID="labelTo" runat="server" Text="To"></asp:Label>
         <br />
         Select Vehicle:
         <br />
         <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource2" DataTextField="Name" DataValueField="Name" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged">
         </asp:DropDownList>
         <br />
         <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:BuzybeezWebConnectionString %>" SelectCommand="SELECT [Name] FROM [Vehicle]"></asp:SqlDataSource>
         &nbsp;Fare<br />
              <asp:ScriptManager runat="server" ID="sm">
 </asp:ScriptManager>
 <asp:updatepanel runat="server">
 <ContentTemplate>
&nbsp;<asp:Button ID="farebtn" runat="server" Text="Fixed Fare" OnClientClick="myClosure();" OnClick="farebtn_Click" Width="107px" />
  <asp:Button ID="CalculationBtn" runat="server" Text="Auto Calculate" OnClientClick="twoinonefunction();" OnClick="CalculationBtn_Click" />
&nbsp;<asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
         <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
         <br />
   
     </ContentTemplate>
 </asp:updatepanel>
 <asp:Button ID="Button5" runat="server" Text="Book" Width="280px" OnClientClick="return myClosure();" OnClick="Button5_Click"   />
           <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
               </div>
          </form>
       
</div>
 
     <%-- <div id="btnBook">--%> <%--<asp:Button ID="btnBooking" runat="server" OnClick="BookingClick" Text="Booking" Width="280px" />--%><%--</div>--%>  

   
    <script>
        //mmm
        function uniKeyCode(event) {
            //e.preventDefault(); // Otherwise the form will be submitted
            var k = event.keyCode;
           
            //alert(k);
         


            if (k == 45)
            {
            //    alert("inside");
                SelectName();
            }
            else if(k==35)
            {
                SelectLocateMeTo(); 
            }

          


            //alert("FORM WAS SUBMITTED");
        }

       



        function uniKeyCode1(event) {
            //e.preventDefault(); // Otherwise the form will be submitted
            var k = event.keyCode;
         
            //alert(k);

            if (k == 45) {
                //    alert("inside");
                SelectName1();
            }
            else if(k==35)
            {
                SelectLocateMeFrom();

            }
            //alert("FORM WAS SUBMITTED");
        }
        var directionsService = new google.maps.DirectionsService;
        var directionsDisplay = new google.maps.DirectionsRenderer;
        function initMap() {
             directionsService = new google.maps.DirectionsService;
             directionsDisplay = new google.maps.DirectionsRenderer;
            var map = new google.maps.Map(document.getElementById('map'), {
                zoom: 6,
                center: {

                    
                    lat: 55.3781, 
                    lng: 3.4360
                }
            });
            directionsDisplay.setMap(map);

           
            var start = new google.maps.places.Autocomplete(
              /** @type {!HTMLInputElement} */
              (document.getElementById('start')), {
                  types: ['geocode'],
                  componentRestrictions: {country: "uk"}
              });

            var end = new google.maps.places.Autocomplete(
              /** @type {!HTMLInputElement} */
              (document.getElementById('end')), {
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
            document.getElementById('end').addEventListener('keypress', function (e) {
                var key = e.which || e.keyCode;
                if (key === 13) { // 13 is enter
                    // code for enter
                    calculateAndDisplayRoute(directionsService, directionsDisplay);
                }
            });

            document.getElementById('submit').addEventListener('click', function () {
                calculateAndDisplayRoute(directionsService, directionsDisplay);
            });
            document.getElementById('DropDownList1').addEventListener('click', function () {
                calculateAndDisplayRoute(directionsService, directionsDisplay);
            });
        }

        document.getElementById('DropDownList3').addEventListener('click', function () {
            calculateAndDisplayRoute(directionsService, directionsDisplay);
        });
        var b = 1;

        var totalAC = 0;
        var currentInp = "";
        $(document).on('click', "#waypoints input[type=text]", function () {
             currentInp = $(this).attr("id");
             
            var placeBox = new google.maps.places.Autocomplete(document.getElementById(currentInp));
        });

        $("#newAutocomplete").click(function () {

            //alert(totalAC);
            if (b < 8) {
                
                totalAC = $("#waypoints input").length;


                totalAC = totalAC + 1;

                var codeVar = "<li><input id='place" + totalAC + "' placeholder='Come visit!' type='text' /></li>";

                $("#waypoints").append(codeVar);
                b++;
            }
           
           
        });

        var waypts = [];
        var inps = "";
        function addplace() {
           
            inps = $('#waypoints input[type=text]');
            alert(inps.length);
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
            calculateAndDisplayRoute(directionsService, directionsDisplay);
            //$('#breaks').remove('<li>' + a.val() + '</li>');g
            //$('#breaks')
            //breaks

        }
       
       

        function calculateAndDisplayRoute(directionsService, directionsDisplay) {
            directionsService.route({
                origin: document.getElementById('start').value,
                destination: document.getElementById('end').value,
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
                    }
                    computeTotalDistance(response);
                } else {
                    window.alert("directions response " + status);
                }
            });
        }
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
            var myroute = result.routes[0];
            for (i = 0; i < myroute.legs.length; i++)
            {
                totalDist += myroute.legs[i].distance.value;
                totalTime += myroute.legs[i].duration.value;
            }
            totalDist = totalDist * 0.621371 / 1000;
            document.getElementById('<%=txtMiles.ClientID %>').value = totalDist;
        
 

    
              <%--    
         if ('<%=DropDownList3.SelectedIndex%>' == 1) {
                calc_fare = (totalDist) * '<%=TextBox7.Text%>';
                '<%=TextBox7.Text%>' = calc_fare;
            }
            }--%>

              if (car == 1)
             {
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

        
        
    </script>


</body>
</html>
