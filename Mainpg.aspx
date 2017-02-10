<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Mainpg.aspx.cs" Inherits="WEB.Mainpg" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
  <script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?key=AIzaSyCLOv4XXeiLHi0SUzW0O3ZNCiq4jGiVHFI&sensor=false&libraries=places"></script>
     <style>

        
        #map {
            height: 100%;
            float: left;
            width: 70%;
            display:none;
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
      #map {
        height: 100%;
        float: left;
        width: 70%;
        height: 100%;
      }
      #right-panel {
        margin: 20px;
        border-width: 2px;
        width: 20%;
        float: left;
        text-align: left;
        padding-top: 20px;
        display:none;
      }
      #directions-panel {
        margin-top: 20px;
        background-color: #FFEE77;
        padding: 10px;
      }
#breaks{width:100%;}
#breaks li{width:100%;float:left;}
         .auto-style1 {
             text-align: center;
         }
    </style>
</head>
<body>
    <div class="auto-style1">
   <div id="map">
</div>
    <td> <input id="start" placeholder="Where to begin?" type="text" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input id="end" placeholder="Where to end?" type="text"/></td>
        <td>
        <br />
      <input type="date" id="dt" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <input type="text" id="account" Placeholder="Enter Account"/><br />
          <input type="text" id="miles" Placeholder="Miles"/><br />
        <br />
        <br />
    
      <input type="button" id="submit" value="Book Now!" onclick="setURL();"/><br />
             <label id="totaltime">  </label>

&nbsp;</td>
<div id="right-panel">
  <div class="auto-style1">
      &nbsp;&nbsp; 
      <br />
        <div id="total"></div>
        
<script type="text/javascript">
    var popup;
    function SelectName() {
        popup = window.open("Popup.html", "Popup", "width=300,height=100");
        popup.focus();
    }
</script>

      &nbsp;<ul id="breaks"></ul>
      <button id="newAutocomplete">Add One</button>
      <input type="button" id="addplace" value="Confirm!"/>
        <input type="button" id="remove"  value="Remove!"/>

        
</tr>
    </p>
    <p>
      <b>To </b>
      &nbsp;</p>
    
      &nbsp;</div>
    

  <div id="directions-panel"></div>
        
</div>


    <script>

        function initMap() {
            var directionsService = new google.maps.DirectionsService;
            var directionsDisplay = new google.maps.DirectionsRenderer;
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
                  types: ['geocode']
              });

            var end = new google.maps.places.Autocomplete(
              /** @type {!HTMLInputElement} */
              (document.getElementById('end')), {
                  types: ['geocode']
              });

            document.getElementById('addplace').addEventListener('click', function () {
                addplace();
            });
            document.getElementById('remove').addEventListener('click', function () {
                //  addplace();
                remove();
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
            document.getElementById('end').addEventListener('blur', function () {
                calculateAndDisplayRoute(directionsService, directionsDisplay);

            });
            document.getElementById('DropDownList1').addEventListener('click', function () {
                calculateAndDisplayRoute(directionsService, directionsDisplay);
            });
        }
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
        function addplace() {   
            var inps = $('#waypoints input[type=text]');
            $('#breaks').empty();
            for (var i = 1; i <= inps.length; i++) {
                var a = $('#waypoints input[type=text]#place' + i);
              
                if (a.val() != "" || a.val() != "") {
                    $('#breaks').append('<li>' + a.val() + '</li>');
                    waypts.push({
                        location: a.val(),
                        stopover: true
                    });
                }
            }
        }

        function calculateAndDisplayRoute(directionsService, directionsDisplay)
        {
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
        var rateperkm = 2.5;
        var minimum_fare = 5;
        var car = "";
        function computeTotalDistance(result) 
        {
           // car = document.getElementById('DropDownList1').value;

            var totalDist = 0;
            var totalTime = 0;
            var myroute = result.routes[0];
            for (i = 0; i < myroute.legs.length; i++) {
                totalDist += myroute.legs[i].distance.value;
                totalTime += myroute.legs[i].duration.value;
            }
            totalDist = totalDist * 0.621371 / 1000;
        

            document.getElementById("miles").value = totalDist;
            document.getElementById("totaltime").innerHTML = "<br>total time is: " + (totalTime / 60).toFixed(2) + " minutes" + "And Total Distance:" + totalDist;
          
        }

       
        google.maps.event.addDomListener(window, 'load', initMap);

        function setURL() {
           
            var from = document.getElementById("start").value;
            var to = document.getElementById("end").value;
            var dt = document.getElementById("dt").value;
            var acc = document.getElementById("account").value;
            var mile = document.getElementById("miles").value;
            
            //just test here ..what is coming..
            if (from !== "") {
                var mylink = "BookingPortal.aspx?from=" + from + "&to=" + to + "&date=" + dt + "&account=" + acc;
                window.open(mylink, "_self")

            }
            else {
                alert("I am an alert box!");
            }
            var mylink = "BookingPortal.aspx?from=" + from + "&to=" + to + "&date=" + dt + "&account=" + acc + "&mile=" + mile;
            // var ssjdurl = "BookingPortal.aspx?mykey=" + dt_value2;
            window.open(mylink, "_self")

            //     popup = window.open(sjdurl, "popup", " menubar =0,toolbar =0,location=0, height=900, width=1000");
            //   popup.window.moveTo(950, 150);

        }
        
    </script>
    </div>
</body>
</html>
