$(document).ready(function (){

  function initialize() {

  	var myLatLng = new google.maps.LatLng(latitude,longitude);

    var mapOptions = {
	    center: myLatLng,
	    zoom: 12,
	    scrollwheel: false
    };
      
    var map = new google.maps.Map(document.getElementById('destination-map'), mapOptions);

    var marker = new google.maps.Marker({
		  position: myLatLng,
		  map: map,
		  title: 'My destination',
		  animation: google.maps.Animation.BOUNCE
		});

		var contentString = "<h3>" + address + "</h3>";

		var infoWindow = new google.maps.InfoWindow({
			content: contentString
		});

		google.maps.event.addListener(marker, 'click', function() {
    	infoWindow.open(map,marker);
 		});
  	
  }
    
  google.maps.event.addDomListener(window, 'load', initialize);
});