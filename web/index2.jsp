<%--
  Created by IntelliJ IDEA.
  User: mano
  Date: 1/24/2020
  Time: 12:25 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Login CD Service </title>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <script src="https://www.google.com/recaptcha/api.js" async defer></script>
  <!--===============================================================================================-->
  <link rel="icon" type="image/png" href="login/images/icons/favicon.ico"/>
  <!--===============================================================================================-->
  <link rel="stylesheet" type="text/css" href="login/vendor/bootstrap/css/bootstrap.min.css">
  <!--===============================================================================================-->
  <link rel="stylesheet" type="text/css" href="login/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
  <!--===============================================================================================-->
  <link rel="stylesheet" type="text/css" href="login/fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
  <!--===============================================================================================-->
  <link rel="stylesheet" type="text/css" href="login/vendor/animate/animate.css">
  <!--===============================================================================================-->
  <link rel="stylesheet" type="text/css" href="login/vendor/css-hamburgers/hamburgers.min.css">
  <!--===============================================================================================-->
  <link rel="stylesheet" type="text/css" href="login/vendor/animsition/css/animsition.min.css">
  <!--===============================================================================================-->
  <link rel="stylesheet" type="text/css" href="login/vendor/select2/select2.min.css">
  <!--===============================================================================================-->
  <link rel="stylesheet" type="text/css" href="login/vendor/daterangepicker/daterangepicker.css">
  <!--===============================================================================================-->
  <link rel="stylesheet" type="text/css" href="login/css/util.css">
  <link rel="stylesheet" type="text/css" href="login/css/main.css">
  <!--===============================================================================================-->
</head>
<body>
<div class="limiter">
  <div class="container-login100">
    <div class="wrap-login100" style="width:40%; height:60%; ">
      <div class="login100-form-title" style="background-image: url(login/images/bg-01.jpg);">
					<span class="login100-form-title-1">
						Sign In
					</span>
      </div>

      <form class="login100-form validate-form" action="/Login2Servlet" method="post">
        <div class="wrap-input100 validate-input m-b-26" data-validate="Username is required">
          <span class="label-input100">Email</span>
          <input class="input100" type="text" name="email" placeholder="Enter username">
          <span class="focus-input100"></span>
        </div>

        <div class="wrap-input100 validate-input m-b-18" data-validate = "Password is required">
          <span class="label-input100">Password</span>
          <input class="input100" type="password" name="password" placeholder="Enter password">
          <span class="focus-input100"></span>
        </div>

        <div class="flex-sb-m w-full p-b-30">
          <div>
            <a href="reset_password2.jsp" class="txt1" name="/reset_password">
              Forgot Password?
            </a>
          </div>
          <div>
            <a href="registrationProducer.jsp" class="txt1" name="createacc">
              Create Account
            </a>
          </div>
        </div>

        <div class="g-recaptcha" data-sitekey="6Ld5GtUUAAAAAA5v_UQ3xexZBi_Psr0y1-qyCRo_">

        </div>
        <br/>

        <div class="container-login100-form-btn">
          <button class="login100-form-btn" style="background-color:#008B8B; " type="submit">

            <a style="color: white;" href="profiles.jsp">Go Back?</a>
            <div style="color:white;"><b>   Login</b></div>

          </button>

        </div>



      </form>


    </div>
  </div>
</div>

<script type="text/javascript">
  var onloadCallback = function() {
    alert("grecaptcha is ready!");
  };
</script>
<!--===============================================================================================-->
<script src="login/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
<script src="login/vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
<script src="login/vendor/bootstrap/js/popper.js"></script>
<script src="login/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
<script src="login/vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
<script src="login/vendor/daterangepicker/moment.min.js"></script>
<script src="login/vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
<script src="login/vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
<script src="login/js/main.js"></script>
</body>
</html>
