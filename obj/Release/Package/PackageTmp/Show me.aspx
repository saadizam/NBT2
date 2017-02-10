<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Show me.aspx.cs" Inherits="WEB.Show_me" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     
   
  
   
    <style type="text/css">
        #map
        {
          height:400px;
          width:400px;
          display:block;
        }
      </style>

     <script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?key=AIzaSyCLOv4XXeiLHi0SUzW0O3ZNCiq4jGiVHFI&sensor=false&libraries=places"></script>
      <script type="text/javascript">

          function getPosition(callback) {
              var geocoder = new google.maps.Geocoder();
              var postcode = document.getElementById("postcode").value;

              geocoder.geocode({ 'address': postcode }, function (results, status) {
                  if (status == google.maps.GeocoderStatus.OK) {
                      callback({
                          latt: results[0].geometry.location.lat(),
                          long: results[0].geometry.location.lng()
                      });
                  }
              });
          }

          function setup_map(latitude, longitude) {
              var _position = { lat: latitude, lng: longitude };

              var mapOptions = {
                  zoom: 16,
                  center: _position
              }

              var map = new google.maps.Map(document.getElementById('map'), mapOptions);

              var marker = new google.maps.Marker({
                  position: mapOptions.center,
                  map: map
              });
          }




          window.onload = function () {
              setup_map(51.5073509, -0.12775829999998223);

              document.getElementById("form").onsubmit = function () {
                  getPosition(function (position) {

                      var text = document.getElementById("text")
                      text.innerHTML = "Marker position: { Longitude: " + position.long + ",  Latitude:" + position.latt + " }";

                      setup_map(position.latt, position.long);
                  });
              }
          }
      </script>  
</head>
<body>
    
    <form action="javascript:void(0)" id="form">
        <input type="text" id="postcode" placeholder="Enter a postcode">
        <input type="submit" value="Show"/>
      </form>
      <div id="map"></div>
      <div id="text"></div>
</body>
</html>
