<%@ page contentType="text/html;charset=UTF-8" %>
<jsp:useBean id="obj" class="ORCS.Entity.Login" scope="session"/>
<html>
<head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="Mudassar Ali" content="">
        <link rel="shortcut icon" href="Theme/assets/ico/favicon.ico">
        <title>Signup</title>

        <!-- Bootstrap core CSS -->
        <link href="Theme/dist/css/bootstrap.min.css" rel="stylesheet">

        <!-- Just for debugging purposes. Don't actually copy this line! -->
        <!--[if lt IE 9]><script src="Theme/assets/js/ie8-responsive-file-warning.js"></script><![endif]-->

        <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!--[if lt IE 9]>
        <script src="Theme/resource/http_oss.maxcdn.com_libs_html5shiv_3.7.0_html5shiv.js"></script>
        <script src="Theme/resource/http_oss.maxcdn.com_libs_respond.js_1.4.2_respond.min.js"></script>
        <script src="Theme/resource/jquery-1.10.2.min.js"></script>
        <![endif]-->

        <!-- Custom styles for this template -->
        <link href="Theme/assets/css/carousel.css" rel="stylesheet">
        <link href="Theme/Sheets/stylesheet.css"rel="stylesheet">
    <style>
        body {
            background: url("Theme/assets/images/backsign.jpeg");
            background-repeat: no-repeat;
            background-size: 100%;
        }
        .custom-footer{
            position: inherit;
            right: 0;
            bottom: 0;
            left: 0;
            padding: 2.5rem;
            background-color: black;
            text-align: center;
        }
    </style>
</head>
    <!-- NAVBAR ================================================== -->
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
                        <li><a href="controller?action=index">Home</a></li>
                        <li><a href="controller?action=about">About Us</a></li>
                        <li><a href="controller?action=contact">Contact</a></li>
                        <li><a href="controller?action=booking">Bookings</a></li>
                        <li class="active"><a href="controller?action=signup">Sign up</a></li>
                        <li><a href="controller?action=login">Login</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Form Body -->
<div class="container">
    <div class="bodyInner" style="margin-top: 140px;">
        <div class="col-lg-12 well">
            <div class="row">
                <form method="Post" action="/controller?action=process">
                    <div class="col-sm-12" style="color: black">
                        <div class="row">
                            <div class="col-sm-6 form-group">
                                <label>First Name</label>
                                <input type="text" required placeholder="Enter first name" name="firstname" class="form-control">
                            </div>
                            <div class="col-sm-6 form-group">
                                <label>Last Name</label>
                                <input type="text" required pattern="[a-z A-Z]*" placeholder="Enter last name" name="lastname" class="form-control">
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-6 form-group">
                                <label>Email</label>
                                <input type="email" required placeholder="e.g. mudassaralics007@gmail.com" name="email" class="form-control">
                            </div>
                            <div class="col-sm-6 form-group">
                                <label>Contact</label>
                                <input type="text" required placeholder="+923064153459" name="contact" class="form-control">
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-6 form-group">
                                <label>Username</label>
                                <input type="text" required name="username" placeholder="e.g. Kepler" class="form-control">
                            </div>
                            <div class="col-sm-6 form-group">
                                <label>Password</label>
                                <input type="password" required placeholder="Enter password" name="password" class="form-control">
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-8 form-group">
                                <label>Address</label>
                                <textarea row="3" required name="address" class="form-control"></textarea>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-6 form-group">
                                <label>City</label>
                                <input type="text" required placeholder="e.g. Lahore" name="city" class="form-control">
                            </div>
                            <div class="col-sm-6">
                                    <label>Country</label>
                                    <input type="text" required placeholder="e.g. Pakistan" name="country" class="form-control">
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-6 form-group">
                                <button type="submit" class="btn btn-primary btn-lg" name="SaveButton" value="Submit"> Submit</button>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<!-- PAGE FOOTER -->
<div class="custom-footer">
    <p class="pull-right"><a href="/#/" style="color: white">Back to home</a></p>
    <p class="pull-left">&copy; 2017-2018 ORCS, Lynx Inc &middot; <a href="/#/" style="color: white">Privacy</a> &middot; <a href="/#/" style="color: white">Terms</a></p>
</div>
<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
<script src="Theme/dist/js/bootstrap.min.js"></script>
<script src="Theme/assets/js/holder.js"></script>
</body>
</html>