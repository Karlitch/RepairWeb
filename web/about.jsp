<!DOCTYPE html><%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="description" content="Free Responsive Html5 Templates">
    <meta name="author" content="">
	
    <title>😍 请联系我们</title>
	
    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
	
	<!-- Custom CSS -->
    <link href="css/style.css" rel="stylesheet">
	<link rel="stylesheet" href="fonts/stylesheet.css">
	<link href="css/mb-comingsoon-iceberg.css" rel="stylesheet" />
	
	<!-- Custom Fonts -->
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
	
	<!-- jQuery and Modernizr-->
	<script src="js/jquery-2.1.1.js"></script>
	<script src="js/modernizr.custom.97074.js"></script>

	
	<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="../../js/html5shiv.js"></script>
    <script src="../../js/respond.min.js"></script>
    <![endif]-->
</head>

<body class="sub-page">

<%@include file="WEB-INF/jsp/commom/head.jsp"%>
	<!-- Header -->
	
	<!-- /////////////////////////////////////////Content -->
	<div id="page-content">
		<div class="container">
			<div class="row">
				<div id="main-content">
					<div class="row">
 
						<div class="col-md-6" style="margin-left: auto;margin-right: auto;">
							<h1>联系我们</h1><br><br>
							<p><span class="glyphicon glyphicon-home"></span> 中国</p><br>
							<p><span class="glyphicon glyphicon-earphone"></span> +6221 888 888 90 , +6221 888 88891</p>
							<br><p><span class="glyphicon glyphicon-envelope"></span> Karlitch@lele.com</p>
							<!--Start Map-->
							<div id="map" style="height: 230px;"></div>
							<!--End Map-->
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<!-- FOOTER -->
	<footer>
		<div class="wrap-footer">
			<div class="container">
				<div class="row">
					<ul class="list-inline social-buttons">
						<li><a href="#"><i class="fa fa-facebook"></i></a></li>
						<li><a href="#"><i class="fa fa-instagram"></i></a></li>
						<li><a href="#"><i class="fa fa-twitter"></i></a></li>
						<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
						<li><a href="#"><i class="fa fa-pinterest"></i></a></li>
						<li><a href="#"><i class="fa fa-vimeo"></i></a></li>
						<li><a href="#"><i class="fa fa-linkedin"></i></a></li>
						<li><a href="#"><i class="fa fa-youtube"></i></a></li>
					</ul>
					<div class="copyright">
						<p>Copyright 2020 - 版权所有 <a href="https://space.bilibili.com/249546266" target="_blank" title="l"> Karlitch </a> - Create by <a href="https://space.bilibili.com/249546266" title="l" target="_blank"> Lele </a></p>
					</div>
				</div>
			</div>
		</div>
	</footer>

    <!-- Core JavaScript Files -->
   	 
    <script src="../../js/bootstrap.min.js"></script>
	
	<!-- Google Map -->
	<script>
	  var marker;
	  var image = 'images/map-marker.png';
      function initMap() {
        var myLatLng = {lat: 39.79, lng: -86.14};

		// Specify features and elements to define styles.
        var styleArray = [
          {
            featureType: "all",
            stylers: [
             { saturation: -80 }
            ]
          },{
            featureType: "road.arterial",
            elementType: "geometry",
            stylers: [
              { hue: "#000000" },
              { saturation: 50 }
            ]
          },{
            featureType: "poi.business",
            elementType: "labels",
            stylers: [
              { visibility: "off" }
            ]
          }
        ];
		
        var map = new google.maps.Map(document.getElementById('map'), {
          center: myLatLng,
          scrollwheel: false,
		   // Apply the map style array to the map.
          styles: styleArray,
          zoom: 7
        });

        var directionsDisplay = new google.maps.DirectionsRenderer({
          map: map
        });

		// Create a marker and set its position.
        marker = new google.maps.Marker({
          map: map,
		  icon: image,
		  draggable: true,
          animation: google.maps.Animation.DROP,
          position: myLatLng
        });
		marker.addListener('click', toggleBounce);
      }
	  
	  function toggleBounce() {
        if (marker.getAnimation() !== null) {
          marker.setAnimation(null);
        } else {
          marker.setAnimation(google.maps.Animation.BOUNCE);
        }
      }
    </script>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyB7V-mAjEzzmP6PCQda8To0ZW_o3UOCVCE&callback=initMap" async defer></script>
	
</body>

</html>
