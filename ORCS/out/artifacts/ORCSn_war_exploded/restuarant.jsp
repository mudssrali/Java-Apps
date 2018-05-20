<%@ page contentType="text/html;charset=UTF-8" %>
<jsp:useBean id="user" class="ORCS.Entity.Customer" scope="session"/>
<html>
<head>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="Mudassar Ali" content="">
        <link rel="shortcut icon" href="Theme/assets/ico/favicon.ico">
        <title>Add Restaurant</title>

        <!-- Bootstrap core CSS -->
        <link href="Theme/dist/css/bootstrap.min.css" rel="stylesheet">

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
    <!-- NAVBAR ================================================== -->
</head>
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
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="index.jsp">Online Restaurant Coupon System</a>
                </div>
                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav">
                        <li class=""><a href="index.jsp">Home</a></li>
                        <li><a href="about.jsp">About Us</a></li>
                        <li><a href="contact.jsp">Contact</a></li>
                        <li><a href="#tablebooking">Table Booking</a></li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">Restaurants<b class="caret"></b></a>
                            <ul class="dropdown-menu">
                                <li><a href="#">DRINKS</a></li>
                                <li><a href="#">STARTERS</a></li>
                                <li><a href="#">TANDOORI - CLAY OVEN - DISHES</a></li>
                                <li class="divider"></li>
                                <li class="dropdown-header">SEAFOOD MAIN COURSES</li>
                                <li><a href="#">CHICKEN MAIN COURSES</a></li>
                                <li><a href="#">LAMB MAIN COURSES</a></li>
                                <li><a href="#">RICE/BREDS</a></li>
                                <li><a href="#">ACCOMPANIMENTS</a></li>
                            </ul>
                        </li>
                        <li class="active"><a href="signup.jsp">Sign up</a></li>
                        <li><a href="login.jsp">Login</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Page title for Sign up -->
<div class="pageTitle">
    <div class="container">
        <h2>Sign up</h2>
    </div>
</div>
</body>
</html>