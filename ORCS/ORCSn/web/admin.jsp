<!DOCTYPE html>
<html lang="en">
<head>
    <%
        if (session.getAttribute("username")==null)
        {
            response.sendRedirect("/controller?action=index");
            return;
        }
    %>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="shortcut icon" href="/Theme/assets/ico'/favicon.ico">
    <title>www.orcs.com.pk</title>

    <!-- Bootstrap core CSS -->
    <link href="/Theme/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy this line! -->
    <!--[if lt IE 9]><script src="Theme/assets/js/ie8-responsive-file-warning.js"></script><![endif]-->

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
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
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span><span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="index.jsp">Online Restaurant Coupon System</a>
                </div>
                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="admin.jsp">Home</a></li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown"> Staff <b class="caret"></b></a>
                            <ul class="dropdown-menu">
                                <li><a href="staff.jsp">Add New Staff</a></li>
                                <li><a href="viewstaff.jsp">View All Staff</a></li>
                            </ul>
                        </li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown"> Customer <b class="caret"></b></a>
                            <ul class="dropdown-menu">
                                 <li><a href="customer.jsp">Add New Customer</a></li>
                                <li><a href="viewcustomer.jsp">View All Customer</a></li>
                            </ul>
                        </li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">Menu<b class="caret"></b></a>
                            <ul class="dropdown-menu">
                                <li class="divider"></li>
                                <li class="dropdown-header">Company</li>
                                <li><a href="company.jsp">Add New Company</a>
                                <li><a href="viewcompany">View All Company</a></li>

                                <li class="divider"></li>
                                <li class="dropdown-header">Restaurant</li>
                                <li><a href="company.jsp">Add New Restaurant</a>
                                <li><a href="viewcompany">View All Restaurant</a></li>

                                <li class="divider"></li>
                                <li class="dropdown-header">Coupon</li>
                                <li><a href="coupon.jsp">Add New Coupon</a></li>
                                <li><a href="viewcoupon.jsp">View All Coupon</a></li>

                                <li class="divider"></li>
                                <li class="dropdown-header">Deal</li>
                                <li><a href="coupon.jsp">Add New Deal</a></li>
                                <li><a href="viewcoupon.jsp">View All Deal</a></li>

                                <li class="divider"></li>
                                <li class="dropdown-header">Gift</li>
                                <li><a href="coupon.jsp">Add New Gift</a></li>
                                <li><a href="viewcoupon.jsp">View All Gift</a></li>
                            </ul>
                        <li><a href="/controller?action=logout">Logout</a></li>
                    </ul>
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
                <div id="googleMap" style="height:450px;"></div>
                <div class="container">
                    <div class="carousel-caption">
                        <a class="btn btn-lg btn-default" href="#" role="button" style="font-size:2em">Order Online Now &raquo;</a>
                    </div>
                </div>
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
            <p>Donec sed odio dui. Etiam porta sem malesuada magna mollis euismod. Nullam id dolor id nibh ultricies</p>
            <p><a class="btn btn-default" href="#" role="button">&pound; 2.2 Add to cart &raquo;</a></p>
        </div><!-- /.col-lg-4 -->
        <div class="col-lg-4">
            <img class="img-circle" src="Theme/assets/images/burger.png" alt="Generic placeholder image">
            <h2>Burger</h2>
            <p>Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. </p>
            <p><a class="btn btn-default" href="#" role="button">&pound;5 Add to cart &raquo;</a></p>
        </div><!-- /.col-lg-4 -->
        <div class="col-lg-4">
            <img class="img-circle" src="Theme/assets/images/gorkha-special-chicken.png" alt="Lam Tikka">
            <h2>Gurkha Chicken</h2>
            <p>Donec sed odio dui. Cras justo odio, dapibus ac facilisis in, egestas eget quam. </p>
            <p><a class="btn btn-default" href="#" role="button">&pound;4 Add to cart &raquo;</a></p>
        </div><!-- /.col-lg-4 -->
    </div><!-- /.row -->
</div>


<div class="introSection">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="cntr">We are launching complete online food order system for restaurent and takeaway Only at the rate <br>&pound;999 </h1>
            </div>
        </div>
    </div>
</div>


<div class="container marketing">
    <h2 class="itemsTitle">Breakfast</h2>
    <div id="myCarousel1" class="carousel slide" data-ride="carousel">
        <!-- Indicators -->
        <div class="carousel-inner">
            <div class="item active">
                <div class="row">
                    <div class="col-lg-4">
                        <img src="Theme/assets/images/salate.png" alt="Generic placeholder image">
                        <h4>Salates</h4>
                        <p><a class="btn btn-default" href="#" role="button">Add to cart &raquo;</a></p>
                    </div><!-- /.col-lg-4 -->
                    <div class="col-lg-4">
                        <img src="Theme/assets/images/burger.png" alt="Generic placeholder image">
                        <h4>Meal</h4>
                        <p><a class="btn btn-default" href="#" role="button">Add to cart &raquo;</a></p>
                    </div><!-- /.col-lg-4 -->
                    <div class="col-lg-4">
                        <img src="Theme/assets/images/drinks.png" alt="Generic placeholder image">
                        <h4>Drink</h4>
                        <p><a class="btn btn-default" href="#" role="button">Add to cart &raquo;</a></p>
                    </div><!-- /.col-lg-4 -->
                </div><!-- /.row -->

            </div>
            <div class="item">
                <div class="row">
                    <div class="col-lg-4">
                        <img src="Theme/assets/images/salate.png" alt="Generic placeholder image">
                        <h4>Salates</h4>
                        <p><a class="btn btn-default" href="#" role="button">Add to cart &raquo;</a></p>
                    </div><!-- /.col-lg-4 -->
                    <div class="col-lg-4">
                        <img src="Theme/assets/images/burger.png" alt="Generic placeholder image">
                        <h4>Meal</h4>
                        <p><a class="btn btn-default" href="#" role="button">Add to cart &raquo;</a></p>
                    </div><!-- /.col-lg-4 -->
                    <div class="col-lg-4">
                        <img src="Theme/assets/images/drinks.png" alt="Generic placeholder image">
                        <h4>Drink</h4>
                        <p><a class="btn btn-default" href="#" role="button">Add to cart &raquo;</a></p>
                    </div><!-- /.col-lg-4 -->
                </div><!-- /.row -->

            </div>
            <div class="item">
                <div class="row">
                    <div class="col-lg-4">
                        <img  src="Theme/assets/images/salate.png" alt="Generic placeholder image">
                        <h4>Salates</h4>
                        <p><a class="btn btn-default" href="#" role="button">Add to cart &raquo;</a></p>
                    </div><!-- /.col-lg-4 -->
                    <div class="col-lg-4">
                        <img  src="Theme/assets/images/burger.png" alt="Generic placeholder image">
                        <h4>Meal</h4>
                        <p><a class="btn btn-default" href="#" role="button">Add to cart &raquo;</a></p>
                    </div><!-- /.col-lg-4 -->
                    <div class="col-lg-4">
                        <img  src="Theme/assets/images/drinks.png" alt="Generic placeholder image">
                        <h4>Drink</h4>
                        <p><a class="btn btn-default" href="#" role="button">Add to cart &raquo;</a></p>
                    </div><!-- /.col-lg-4 -->
                </div><!-- /.row -->
            </div>
        </div>
        <a class="left carousel-control" href="#myCarousel1" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a>
        <a class="right carousel-control" href="#myCarousel1" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a>
    </div><!-- /.carousel -->
</div>

<div class="container marketing">
    <h2 class="itemsTitle">Lunch</h2>
    <div id="myCarousel2" class="carousel slide" data-ride="carousel">
        <!-- Indicators -->
        <div class="carousel-inner">
            <div class="item active">
                <div class="row">
                    <div class="col-lg-4">
                        <img src="Theme/assets/images/salate.png" alt="Generic placeholder image">
                        <h4>Salates</h4>
                        <p><a class="btn btn-default" href="#" role="button">Add to cart &raquo;</a></p>
                    </div><!-- /.col-lg-4 -->
                    <div class="col-lg-4">
                        <img src="Theme/assets/images/chicken.png" alt="Generic placeholder image">
                        <h4>Meal</h4>
                        <p><a class="btn btn-default" href="#" role="button">Add to cart &raquo;</a></p>
                    </div><!-- /.col-lg-4 -->
                    <div class="col-lg-4">
                        <img src="Theme/assets/images/drinks_lussy.png" alt="Generic placeholder image">
                        <h4>Drink</h4>
                        <p><a class="btn btn-default" href="#" role="button">Add to cart &raquo;</a></p>
                    </div><!-- /.col-lg-4 -->
                </div><!-- /.row -->

            </div>
            <div class="item">
                <div class="row">
                    <div class="col-lg-4">
                        <img src="Theme/assets/images/chicken_fry.png" alt="Generic placeholder image">
                        <h4>Salates</h4>
                        <p><a class="btn btn-default" href="#" role="button">Add to cart &raquo;</a></p>
                    </div><!-- /.col-lg-4 -->
                    <div class="col-lg-4">
                        <img src="Theme/assets/images/fish-and-chips.png" alt="Generic placeholder image">
                        <h4>Meal</h4>
                        <p><a class="btn btn-default" href="#" role="button">Add to cart &raquo;</a></p>
                    </div><!-- /.col-lg-4 -->
                    <div class="col-lg-4">
                        <img src="Theme/assets/images/drinks.png" alt="Generic placeholder image">
                        <h4>Drink</h4>
                        <p><a class="btn btn-default" href="#" role="button">Add to cart &raquo;</a></p>
                    </div><!-- /.col-lg-4 -->
                </div><!-- /.row -->

            </div>
            <div class="item">
                <div class="row">
                    <div class="col-lg-4">
                        <img  src="Theme/assets/images/salate.png" alt="Generic placeholder image">
                        <h4>Salates</h4>
                        <p><a class="btn btn-default" href="#" role="button">Add to cart &raquo;</a></p>
                    </div><!-- /.col-lg-4 -->
                    <div class="col-lg-4">
                        <img  src="Theme/assets/images/burger.png" alt="Generic placeholder image">
                        <h4>Meal</h4>
                        <p><a class="btn btn-default" href="#" role="button">Add to cart &raquo;</a></p>
                    </div><!-- /.col-lg-4 -->
                    <div class="col-lg-4">
                        <img  src="Theme/assets/images/drinks.png" alt="Generic placeholder image">
                        <h4>Drink</h4>
                        <p><a class="btn btn-default" href="#" role="button">Add to cart &raquo;</a></p>
                    </div><!-- /.col-lg-4 -->
                </div><!-- /.row -->
            </div>
        </div>
        <a class="left carousel-control" href="#myCarousel2" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a>
        <a class="right carousel-control" href="#myCarousel2" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a>
    </div><!-- /.carousel -->
</div>

<div class="container marketing">
    <h2 class="itemsTitle">Dinner</h2>
    <div id="myCarousel3" class="carousel slide" data-ride="carousel">
        <!-- Indicators -->
        <div class="carousel-inner">
            <div class="item active">
                <div class="row">
                    <div class="col-lg-4">
                        <img src="Theme/assets/images/chicken_fry.png" alt="Generic placeholder image">
                        <h4>Chicken</h4>
                        <p><a class="btn btn-default" href="#" role="button">Add to cart &raquo;</a></p>
                    </div><!-- /.col-lg-4 -->
                    <div class="col-lg-4">
                        <img src="Theme/assets/images/rice.png" alt="Generic placeholder image">
                        <h4>Rice</h4>
                        <p><a class="btn btn-default" href="#" role="button">Add to cart &raquo;</a></p>
                    </div><!-- /.col-lg-4 -->
                    <div class="col-lg-4">
                        <img src="Theme/assets/images/drinks.png" alt="Generic placeholder image">
                        <h4>Drink</h4>
                        <p><a class="btn btn-default" href="#" role="button">Add to cart &raquo;</a></p>
                    </div><!-- /.col-lg-4 -->
                </div><!-- /.row -->

            </div>
            <div class="item">
                <div class="row">
                    <div class="col-lg-4">
                        <img src="Theme/assets/images/courinder.png" alt="Generic placeholder image">
                        <h4>Salates</h4>
                        <p><a class="btn btn-default" href="#" role="button">Add to cart &raquo;</a></p>
                    </div><!-- /.col-lg-4 -->
                    <div class="col-lg-4">
                        <img src="Theme/assets/images/burger.png" alt="Generic placeholder image">
                        <h4>Meal</h4>
                        <p><a class="btn btn-default" href="#" role="button">Add to cart &raquo;</a></p>
                    </div><!-- /.col-lg-4 -->
                    <div class="col-lg-4">
                        <img src="Theme/assets/images/drinks.png" alt="Generic placeholder image">
                        <h4>Drink</h4>
                        <p><a class="btn btn-default" href="#" role="button">Add to cart &raquo;</a></p>
                    </div><!-- /.col-lg-4 -->
                </div><!-- /.row -->

            </div>
            <div class="item">
                <div class="row">
                    <div class="col-lg-4">
                        <img  src="Theme/assets/images/salate.png" alt="Generic placeholder image">
                        <h4>Salates</h4>
                        <p><a class="btn btn-default" href="#" role="button">Add to cart &raquo;</a></p>
                    </div><!-- /.col-lg-4 -->
                    <div class="col-lg-4">
                        <img  src="Theme/assets/images/chicken_fry.png" alt="Generic placeholder image">
                        <h4>Chicken</h4>
                        <p><a class="btn btn-default" href="#" role="button">Add to cart &raquo;</a></p>
                    </div><!-- /.col-lg-4 -->
                    <div class="col-lg-4">
                        <img  src="Theme/assets/images/drinks.png" alt="Generic placeholder image">
                        <h4>Drink</h4>
                        <p><a class="btn btn-default" href="#" role="button">Add to cart &raquo;</a></p>
                    </div><!-- /.col-lg-4 -->
                </div><!-- /.row -->
            </div>
        </div>
        <a class="left carousel-control" href="#myCarousel3" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a>
        <a class="right carousel-control" href="#myCarousel3" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a>
    </div><!-- /.carousel -->
</div>


<div class="highlightSection">
    <div class="container">
        <div class="row">
            <div class="col-lg-4">
                <div class="media">
                    <a href="menu/"><img src="Theme/assets/images/nepali-momo.png" alt="nepali-momo"> </a>
                    <h3 class="media-heading text-primary-theme">NEPALESE LAMB MOMO</h3>
                    <p>Steamed dumplings filled with slightly spiced minced meat served with special sauce.</p>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="media"><a href="menu/"><img src="Theme/assets/images/gorkha-special-chicken.png" alt="GURKHA SPECIAL CHICKEN"> </a>
                    <h3 class="media-heading text-danger-theme">GURKHA SPECIAL CHICKEN</h3>
                    <p>Boneless chicken marinated in mustard, smoked chilli, herbs and spices slowly cooked in tandoor. </p>

                </div>
            </div>
            <div class="col-lg-4">
                <div class="media">
                    <a href="menu/"><img src="Theme/assets/images/lam-tikka.png" alt="Lam Tikka"> </a>
                    <h3 class="media-heading">LAMB TIKKA SPECIAL</h3>
                    <p>Tender pieces of lamb mixed with our own spices and gently cooked in clay oven. </p>
                </div>
            </div>
        </div>
    </div>
</div>



<div class="introSection">
    <div class="container">
        <div class="row">
            <div class="col-lg-5">
                <h3>Welcome to ORCS</h3>
                <p>
                    Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy
                    text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.
                    It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. <br><br>
                    It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages,
                    and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
                </p>
            </div>

            <div class="col-lg-4">
                <h3>About us</h3>
                <p>
                    Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy
                    text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.
                    It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. <br><br>

                </p>

            </div>

            <div class="col-lg-3">
                <h3>Contact us</h3>
                <p>
                    Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy
                    text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.

                </p>

            </div>

        </div>
    </div>
</div>


<div class="container marketing">
    <div id="myCarousel4" class="carousel slide" data-ride="carousel">
        <!-- Indicators -->
        <div class="carousel-inner">
            <div class="item active">
                <div class="row featurette">
                    <div class="col-md-7">
                        <h2 class="featurette-heading">Fish and Chips <span class="text-muted">It's very very testy</span></h2>
                        <p class="lead">Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.</p>
                    </div>
                    <div class="col-md-5">
                        <img src="Theme/assets/images/fish-and-chips.png" alt="Fish and Chips">
                    </div>
                </div>
            </div>


            <div class="item">
                <div class="row featurette">
                    <div class="col-md-5">
                        <img src="Theme/assets/images/burger.png" alt="Generic placeholder image">
                    </div>
                    <div class="col-md-7">
                        <h2 class="featurette-heading">Oh yeah, very nice Burger. <span class="text-muted">Delicious.</span></h2>
                        <p class="lead">Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.</p>
                    </div>
                </div>
            </div>


            <div class="item">
                <div class="row featurette">
                    <div class="col-md-7">
                        <h2 class="featurette-heading">Try yourself <span class="text-muted">Testy</span></h2>
                        <p class="lead">Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.</p>
                    </div>
                    <div class="col-md-5">
                        <img class="img-circle" src="Theme/assets/images/drinks.png" alt="Generic placeholder image">
                    </div>
                </div>
            </div>
        </div>
    </div><!-- /.carousel -->
</div><!-- /.container -->
<!-- /END THE FEATURETTES -->


<!-- FOOTER -->
<footer>
    <div class="container">
        <p class="pull-right"><a href="#">Back to home</a></p>
        <p>&copy; 2017-2018 ORCS, Lynx Inc. &middot; <a href="#">Privacy</a> &middot; <a href="#">Terms</a></p>
    </div>
</footer>



<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
<script src="Theme/dist/js/bootstrap.min.js"></script>
<script src="Theme/assets/js/holder.js"></script>
</body>
</html>
