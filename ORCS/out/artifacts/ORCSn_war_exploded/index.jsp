<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="shortcut icon" href="Theme/assets/ico'/favicon.ico">
    <title>www.orcs.com.pk</title>
    <!-- Bootstrap core CSS -->
    <link href="Theme/dist/css/bootstrap.min.css" rel="stylesheet">

      <!-- Just for debugging purposes. Don't actually copy this line! -->
      <!--[if lt IE 9]><script src="Theme/assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
      <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
      <!--[if lt IE 9]>
      <script src="Theme/resource/http_oss.maxcdn.com_libs_html5shiv_3.7.0_html5shiv.js"></script>
      <script src="Theme/resource/http_oss.maxcdn.com_libs_respond.js_1.4.2_respond.min.js"></script>
      <![endif]-->

      <!-- Custom styles for this template -->
      <link href="Theme/assets/css/carousel.css" rel="stylesheet">
  </head>
<!-- NAVBAR
================================================== -->
  <body>
    <div class="navbar-wrapper">
      <div class="container">
        <div class="navbar navbar-inverse navbar-static-top" role="navigation">
          <div class="container">
            <div class="navbar-header" style="color: #31b0d5">
              <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span><span class="icon-bar"></span>
                  <span class="icon-bar"></span>
              </button>
              <a class="navbar-brand" href="controller?action=index">Online Restaurant Coupon System</a>
            </div>
            <div class="navbar-collapse collapse">
                <ul class="nav navbar-nav">
                  <li class="active"><a href="controller?action=index">Home</a></li>
                  <li><a href="controller?action=about">About Us</a></li>
                  <li><a href="controller?action=contact">Contact</a></li>
                  <li><a href="controller?action=booking">Bookings</a></li>
                  <li><a href="controller?action=signup">Sign up</a></li>
                  <li><a href="controller?action=login">Login</a></li>
                </ul>
            </div>
          </div>
        </div>
      </div>
    </div>

    <!-- Carousel
    ================================================== -->
    <div id="mainCarousel">
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
      <!-- Indicators -->
      <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
      </ol>
      <div class="carousel-inner">
          <div class="item active">
            <script
			    src="http://maps.googleapis.com/maps/api/js?key=AIzaSyAbbXYo89tWFxkekHZPOjUFAynSVzou3Ak&sensor=false">
			</script>
			<script>
			var myCenter=new google.maps.LatLng(31.5703595,74.30962939999995);
			var marker;
			function initialize()
			{
			var mapProp = {
			  center:myCenter,
			  zoom:15,
			  mapTypeId:google.maps.MapTypeId.ROADMAP
			  };
			var map=new google.maps.Map(document.getElementById("googleMap"),mapProp);
			marker=new google.maps.Marker({
			  position:myCenter,
			 // icon:'Theme/assets/images/nepali-momo.png',
			  animation:google.maps.Animation.BOUNCE
			  });

			marker.setMap(map);

			// Info open
			var infowindow = new google.maps.InfoWindow({
			  content:"Hello World!"
			  });

			google.maps.event.addListener(marker, 'click', function() {
			  infowindow.open(map,marker);
			  });
			}
			google.maps.event.addDomListener(window, 'load', initialize);
			</script>
			<div id="googleMap" style="height:400px;"></div>
			</div>
		  </div>
		</div><!-- /.carousel -->
	</div>

	<div class="mainTitle">
	<div class="container">
	<h1>Online Restaurant Coupon System</h1>

	</div>
	</div>

    <!-- Marketing messaging and features
    ================================================== -->
    <!-- Wrap the rest of the page in another container to center all the content. -->

    <div class="container marketing">
      <!-- Three columns of text below the carousel -->
      <div class="row">
          <div class="col-lg-4">
             <img class="img-circle" src="Theme/assets/images/nepali-momo.png" alt="Generic placeholder image">
                <h2>Nepalese MOMO</h2>
             <p><a class="btn btn-default" href="#" role="button">&pound; 2.2 Add to cart &raquo;</a></p>
          </div><!-- /.col-lg-4 -->
          <div class="col-lg-4">
            <img class="img-circle" src="Theme/assets/images/burger.png" alt="Generic placeholder image">
            <h2>Burger</h2>
            <p><a class="btn btn-default" href="#" role="button">&pound;5 Add to cart &raquo;</a></p>
          </div><!-- /.col-lg-4 -->
          <div class="col-lg-4">
		    <img class="img-circle" src="Theme/assets/images/gorkha-special-chicken.png" alt="Lam Tikka">
            <h2>Gurkha Chicken</h2>
            <p><a class="btn btn-default" href="#" role="button">&pound;4 Add to cart &raquo;</a></p>
          </div><!-- /.col-lg-4 -->
      </div><!-- /.row -->
	</div>
    <!-- INTRO SECTION -->
	<div class="introSection">
		<div class="container">
		    <div class="row">
			    <div class="col-lg-12">
				    <h1 class="cntr">We are launching complete online food order system for restaurent and takeaway Only at the rate <br>&pound;999 </h1>
			    </div>
		    </div>
		</div>
	</div>



      <!-- FOOTER -->
      <footer>
          <div class="container">
              <p class="pull-right"><a href="/controller?action=index">Back to home</a></p>
              <p>&copy; 2017-2018 ORCS, Lynx Inc. &middot; <a href="#">Privacy</a> &middot; <a href="#">Terms</a></p>
          </div>
      </footer>



    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="Theme/resource/jquery-1.10.2.min.js"></script>
    <script src="Theme/dist/js/bootstrap.min.js"></script>
    <script src="Theme/assets/js/holder.js"></script>
  </body>
</html>
