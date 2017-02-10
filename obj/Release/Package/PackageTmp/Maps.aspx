<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Maps.aspx.cs" Inherits="WEB.Maps" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>




    <meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
<script type="text/javascript"
src="http://maps.google.com/maps/api/js?key=AIzaSyCLOv4XXeiLHi0SUzW0O3ZNCiq4jGiVHFI&sensor=false"></script>
<script type="text/javascript">
    var geocoder = new google.maps.Geocoder();

    function geocodePosition(pos) {
        geocoder.geocode({
            latLng: pos
        }, function (responses) {
            if (responses && responses.length > 0) {
                alert(responses[0].formatted_address);
                updateMarkerAddress(responses[0].formatted_address);
            } else {
                updateMarkerAddress('Cannot determine address at this location.');
            }
        });
    }

    function updateMarkerStatus(str) {
        document.getElementById('markerStatus').innerHTML = str;
    }

    function updateMarkerPosition(latLng) {
        document.getElementById('info').innerHTML = [
          latLng.lat(),
          latLng.lng()
        ].join(', ');
    }

    function updateMarkerAddress(str) {
        document.getElementById('address').innerHTML = str;
    }

    function initialize() {

      

        var latLng = new google.maps.LatLng(53.85367430091992, -2.105695312499961);
       
       
        var map = new google.maps.Map(document.getElementById('mapCanvas'), {
            zoom: 8,
            center: latLng,
            mapTypeId: google.maps.MapTypeId.ROADMAP
        });
        var marker = new google.maps.Marker({
            position: latLng,
            title: 'Point A',
            map: map,
            draggable: true
        });

       

        // Update current position info.
        updateMarkerPosition(latLng);
        geocodePosition(latLng);

        // Add dragging event listeners.
        google.maps.event.addListener(marker, 'dragstart', function () {
            updateMarkerAddress('Dragging...');
        });

        google.maps.event.addListener(marker, 'drag', function () {
            updateMarkerStatus('Dragging...');
            updateMarkerPosition(marker.getPosition());
        });

        google.maps.event.addListener(marker, 'dragend', function () {
            updateMarkerStatus('Drag ended');
            geocodePosition(marker.getPosition());
        });
    }

    // Onload handler to fire off the app.
    google.maps.event.addDomListener(window, 'load', initialize);
</script>
</head>
<body>

 <style>
  #mapCanvas {
    width: 500px;
    height: 400px;
    float: left;
  }
  #infoPanel {
    float: left;
    margin-left: 10px;
  }
  #infoPanel div {
    margin-bottom: 5px;
  }
     .auto-style1 {
         width: 252px;
         height: 189px;
     }
  </style>

  <div id="mapCanvas"></div>
  <div id="infoPanel" class="auto-style1">
    <b>Marker status:</b>
    <div id="markerStatus"><i>Click and drag the marker.</i></div>
    <b>Current position:</b>
    <div id="info"></div>
    <b>Closest matching address:</b>
    <div id="address"></div>
      <input type="button" id="LocateFrom" value="LocateFrom" onclick="SetNameLocate();"/>
      </div>
       

      
    <a href ="WebForm1.aspx">Back to Booking</a>

   
    <script type="text/javascript">
        function SetNameLocate() {
        if (window.opener != null && !window.opener.closed) {
            var start = window.opener.document.getElementById("start");
            start.value = document.getElementById("address").innerText; //document.getElementById("address").value;
        }
        window.close();
    }
</script>






    
<%--    <style>
  #mapCanvas {
    width: 500px;
    height: 400px;
    float: left;
  }
  #infoPanel {
    float: left;
    margin-left: 10px;
  }
  #infoPanel div {
    margin-bottom: 5px;
  }
  </style>

  <div id="mapCanvas"></div>
  <div id="infoPanel">
    <b>Marker status:</b>
    <div id="markerStatus"><i>Click and drag the marker.</i></div>
    <b>Current position:</b>
    <div id="info"></div>
    <b>Closest matching address:</b>
    <div id="address"></div>
      </div>
    <a href ="BookingPortal.aspx">Back to Booking</a>--%>
</body>
</html>
