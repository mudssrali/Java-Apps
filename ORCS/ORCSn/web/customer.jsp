<!DOCTYPE html>
<html lang="en">
<head>
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
                        <li><a href="admin.jsp">Home</a></li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown"> Staff <b class="caret"></b></a>
                            <ul class="dropdown-menu">
                                <li><a href="staff.jsp">Add New Staff</a></li>
                                <li><a href="viewstaff.jsp">View All Staff</a></li>
                            </ul>
                        </li>
                        <li class="dropdown active">
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
                        <li><a href="adminlogout.jsp.jsp">Logout</a></li>
                    </ul>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="pageTitle">
    <div class="container">
        <h2 align="center">Add New Customer </h2>
    </div>
</div>

<!-- Form Body -->
<div class="container">
    <div class="bodyInner">
        <div class="col-lg-12 well">
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
                                <input type="text" pattern="[a-z]*" placeholder="Enter last name" name="lastname" class="form-control">
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

<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
<script src="Theme/dist/js/bootstrap.min.js"></script>
<script src="Theme/assets/js/holder.js"></script>
</body>
</html>
