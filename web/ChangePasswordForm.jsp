<%@ page import="pojo.CustomerRegistration" %>
<%@ page import="dao.CustomerRegistrationDAO" %>
<%--
  Created by IntelliJ IDEA.
  User: mano
  Date: 1/31/2020
  Time: 10:41 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title> Change Password</title>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
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
<script>
  function fncSubmit()
  {

    if(document.ChangePasswordForm.OldPassword.value == "")
    {
      alert('Please input old password');
      document.ChangePasswordForm.OldPassword.focus();
      return false;
    }

    if(document.ChangePasswordForm.newpassword.value == "")
    {
      alert('Please input Password');
      document.ChangePasswordForm.newpassword.focus();
      return false;
    }

    if(document.ChangePasswordForm.conpassword.value == "")
    {
      alert('Please input Confirm Password');
      document.ChangePasswordForm.conpassword.focus();
      return false;
    }

    if(document.ChangePasswordForm.newpassword.value != document.ChangePasswordForm.conpassword.value)
    {
      alert('Confirm Password Not Match');
      document.ChangePasswordForm.conpassword.focus();
      return false;
    }

    document.ChangePasswordForm.submit();
  }
</script>
<div class="limiter">
  <div class="container-login100">
    <div class="wrap-login100" style="width:40%; height:60%; ">
      <div class="login100-form-title" style="background-image: url(login/images/bg-01.jpg);">
					<span class="login100-form-title-1">
			Change your password
					</span>
      </div>

      <form class="login100-form validate-form"  name="ChangePasswordForm" action="/ProcessChangePWD.jsp" method="post">
        <div class="wrap-input100 validate-input m-b-26" data-validate="old password is required">
          <span class="label-input100">Old Password</span>
          <input class="input100" type="password" name="OldPassword" type="password" id="OLDpwd" placeholder="Enter Code">
          <span class="focus-input100"></span>
        </div>
        <div class="wrap-input100 validate-input m-b-26" data-validate="New password is required">
          <span class="label-input100">New Password</span>
          <input class="input100" type="password" name="newpassword" type="password" id="newpassword" placeholder="Enter Code">
          <span class="focus-input100"></span>
        </div>
        <div class="wrap-input100 validate-input m-b-26" data-validate="Confirm password is required">
          <span class="label-input100">Confirm Password</span>
          <input class="input100"name="conpassword" type="password" id="conpassword" placeholder="Enter Code">
          <span class="focus-input100"></span>
        </div>


        <div class="container-login100-form-btn">
          <button class="login100-form-btn" style="background-color:#008B8B; " type="submit">

            <div style="color:white;"><b>Change</b></div>

          </button>
        </div>
      </form>
    </div>
  </div>
</div>



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

