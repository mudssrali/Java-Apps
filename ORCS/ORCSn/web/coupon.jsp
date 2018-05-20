<%@ page contentType="text/html;charset=UTF-8" %>
<jsp:useBean id="ObjCoupon" class="ORCS.Entity.Coupon" scope="session"/>
<html>
<head>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">
        <link rel="shortcut icon" href="Theme/assets/ico/favicon.ico">
        <title>www.orcs.com.pk</title>

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
    <!-- NAVBAR
    ================================================== -->
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
                        <li class="active"><a href="signup.jsp">Sign up</a></li>
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
                    </ul>
                </div>
            </div>
        </div>

    </div>
</div>



<div class="pageTitle">
    <div class="container">
        <h2>Sign up</h2>
    </div>
</div>

<div class="container">
    <div class="bodyInner">
        <div class="col-lg-12 well"  align="auto">
            <div class="row">
                <form method="Post" action="process.jsp">
                    <div class="col-sm-12">
                        <div class="row">
                            <div class="col-sm-6 form-group">
                                <label>First Name</label>
                                <input type="text" placeholder="Enter first name" name="firstname" class="form-control">
                            </div>
                            <div class="col-sm-6 form-group">
                                <label>Last Name</label>
                                <input type="text" placeholder="Enter last name" name="lastname" class="form-control">
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-6 form-group">
                                <label>Email</label>
                                <input type="email" placeholder="e.g. mudassaralics007@gmail.com" name="email" class="form-control">
                            </div>
                            <div class="col-sm-6 form-group">
                                <label>Contact</label>
                                <input type="text" placeholder="+923064153459" name="contact" class="form-control">
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-6 form-group">
                                <label>Username</label>
                                <input type="text" placeholder="e.g. Kepler" class="form-control">
                            </div>
                            <div class="col-sm-6 form-group">
                                <label>Password</label>
                                <input type="password" placeholder="Enter password" name="password" class="form-control">
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-8 form-group">
                                <label>Address</label>
                                <textarea row="3" name="address" class="form-control"></textarea>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-6 form-group">
                                <label>City</label>
                                <input type="text" placeholder="e.g. Lahore" name="city" class="form-control">
                            </div>
                            <div class="col-sm-6">
                                <label>Country</label>
                                <input type="text" placeholder="e.g. Pakistan" name="country" class="form-control">
                            </div>
                        </div>
                        <div align="row/">
                            <button type="submit" class="btn btn-primary" name="SaveButton" value="Submit"> Submit</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<!-- FOOTER -->
<footer>
    <div class="container">
        <p class="pull-right"><a href="#">Back to top</a></p>
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

