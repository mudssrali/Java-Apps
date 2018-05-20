<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="Mudassar Ali" content="">
    <link rel="shortcut icon" href="Theme/assets/ico/favicon.ico">
    <title>Login</title>

    <!-- Bootstrap core CSS -->
    <link href="Theme/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy this line! -->
    <!--[if lt IE 9]>
    <script src="Theme/assets/js/ie8-responsive-file-warning.js"></script><![endif]-->

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

    <!-- Custom styles for this template -->
    <link href="Theme/assets/css/carousel.css" rel="stylesheet">

    <!-- Custome stylesheet for login -->
    <link href="Theme/Sheets/stylesheet.css" rel="stylesheet">
    <style>
        body {
            background: url("Theme/assets/images/backsign.jpeg");
            background-repeat: no-repeat;
            background-size: 100%;
        }
    </style>
    <script>
        function RemoveErrorMsg()
        {
             document.getElementById("msgError").innerHTML = "";
        }
    </script>
    <style>
        .custom-footer{
            position: absolute;
            right: 0;
            bottom: 0;
            left: 0;
            padding: 2.5rem;
            background-color: black;
            text-align: center;
        }
    </style>
</head>
<body>

<!-- NAVBAR ================================================== -->
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
                    <a class="navbar-brand" href="controller?action=index">Online Restaurant Coupon System</a>
                </div>
                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav">
                        <li><a href="controller?action=index">Home</a></li>
                        <li><a href="controller?action=about">About Us</a></li>
                        <li><a href="controller?action=contact">Contact</a></li>
                        <li><a href="controller?action=booking">Bookings</a></li>
                        <li><a href="controller?action=signup">Sign up</a></li>
                        <li class="active"><a href="controller?action=login">Login</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>

    <div class="container ">
        <div id="loginbox" style="margin-top:220px;" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
            <div class="panel panel-info parent semi_transparent_bg">
                <div class="panel-heading"></div>
                <div style="padding-top:30px" class="panel-body ">
                    <div style="display:none" id="login-alert" class="alert alert-danger col-sm-12"></div>
                    <form id="loginform" class="form-horizontal" role="form" action="/controller?action=validate" method="post">
                        <div style="margin-bottom: 25px" class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                            <input id="username" type="text" class="form-control" name="username" value=""
                               placeholder="username or email" onfocus="RemoveErrorMsg();">
                        </div>
                        <div style="margin-bottom: 25px" class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                            <input id="password" type="password" class="form-control" name="password"
                               placeholder="password">
                        </div>
                        <div style="float:right; font-size: 80%; position: relative; top:-10px">
                            <a href="controller?action=passwordchange">
                                <div style="color: #2a6496">Forgot password?</div>
                            </a>
                        </div>
                    <!-- START OF ERROR MESSAGE IF USER IS NOT AVAILABLE -->
                    <%
                        try {
                            String msg = session.getAttribute("Error").toString();
                            session.removeAttribute("Error");
                            if (msg != null)
                            {
                    %>
                    <div id="msgError"
                         style="float:left; font-size: 80%; position: relative; top: -10px; color: red"><%=msg%>
                    </div>
                    <%
                            }
                        } catch (Exception e) {
                        }
                    %>
                    <!-- END OF ERROR MESSAGE IF USER IS NOT AVAILABLE -->
                        <div style="margin-top:10px" class="form-group">
                        <!-- Button -->
                            <div class="col-sm-12 controls">
                                <input type="submit" id="btn-login" class="btn btn-success" value="Login">
                                <a id="btn-fblogin" href="/#/" class="btn btn-primary">Login with Facebook</a>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-12 control">
                                <div style="border-top: 1px solid#357ebd; padding-top:15px; font-size:85%">
                                    <a href="controller?action=signup">
                                        <div style="color: #3071a9">Don't have an account?</div>
                                    </a>
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
                <div class="container">
                    <p class="pull-right"><a href="/#/" style="color: white">Back to home</a></p>
                    <p class="pull-left">&copy; 2017-2018 ORCS, Lynx Inc &middot; <a href="/#/" style="color: white">Privacy</a> &middot; <a href="/#/" style="color: white">Terms</a></p>
                </div>
        </div>
<!-- Placed at the end of the document so the pages load faster -->
<script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
<script src="Theme/dist/js/bootstrap.min.js"></script>
<script src="Theme/assets/js/holder.js"></script>
</body>
</html>