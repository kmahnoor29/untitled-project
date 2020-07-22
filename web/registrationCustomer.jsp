<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="com.mysql.jdbc.PreparedStatement" %>
<%@ page import="java.sql.DriverManager" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%--
  Created by IntelliJ IDEA.
  User: mano
  Date: 1/25/2020
  Time: 2:29 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>



<html>
<head>
  <title>Login CD Service</title>
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
</head>
<body>
<div class="limiter">
  <div class="container-login100" >
    <div class="wrap-login100" style="width:40%; height:60%; ">
      <div class="login100-form-title" style="background-image: url(login/images/bg-01.jpg);">
					<span class="login100-form-title-1">
						Sign Up As Customer
					</span>
      </div>

      <form class="login100-form validate-form" action="CustomerRegistrationServlet" method="post">
        <div class="wrap-input100 validate-input m-b-26" data-validate="name is required">
          <span class="label-input100">First Name</span>
          <input class="input100" required="true"  type="text" name="firstname" placeholder="Enter name">
          <span class="focus-input100"></span>
        </div>
        <div class="wrap-input100 validate-input m-b-26" data-validate="name is required">
          <span class="label-input100">Last Name</span>
          <input class="input100" required="true"  type="text" name="lastname" placeholder="Enter name">
          <span class="focus-input100"></span>
        </div>
        <div class="wrap-input100 validate-input m-b-26" data-validate="email is required">
          <span class="label-input100">Email </span>
          <input class="input100" required="true"  type="text" name="email" placeholder="Enter Email">
          <span class="focus-input100"></span>
        </div>

        <div class="wrap-input100 validate-input m-b-18" data-validate = "Password is required">
          <span class="label-input100">Password</span>
          <input class="input100" required="true"  type="password" name="password" placeholder="Enter password">
          <span class="focus-input100"></span>
        </div>
        <div class="wrap-input100 validate-input m-b-18" data-validate = "Password is required">
          <span class="label-input100"> Confirm Password</span>
          <input class="input100" required="true"  type="password" name="confirmpassword" placeholder="Enter Confirm password">
          <span class="focus-input100"></span>
        </div>

        <div class="form-wrapper100 validate-input m-b-18" style="width:100%" data-validate = "registration is required">
          <span class="label-input100">Registration</span>
          <select required="true"  class="form-control" name="registration">
            <option value="register" disabled selected>Registration As</option>
            <option value="customer">Customer</option>
          </select>
          <span class="focus-input100"></span>
        </div>

        <div class="form-wrapper100 validate-input m-b-19" style="width:100%" data-validate = "gender is required">
          <span class="label-input100">Gender</span>
          <select required="true"  class="form-control" name="gender">
            <option value="gender"  disabled selected>Gender</option>
            <option value="female">Female</option>
            <option value="male">Male</option>
            <option value="other">Other</option>
          </select>
          <span class="focus-input100"></span>
        </div>


        <br>
        <div class="container-login100-form-btn">
          <button class="login100-form-btn" style="background-color:#008B8B;" type="submit" >

              <div style="color:white;"><b>Registration</b></div>

          </button>
        </div>






        <script>

          String.prototype.escape = function() {
            var tagsToReplace = {
              '&': '&amp;',
              '<': '&lt;',
              '>': '&gt;'
            };
            return this.replace(/[&<>]/g, function(tag) {
              return tagsToReplace[tag] || tag;
            });
          };

          function mysql_real_escape_string (str) {
            return str.replace(/[\0\x08\x09\x1a\n\r"'\\\%]/g, function (char) {
              switch (char) {
                case "\0":
                  return "\\0";
                case "\x08":
                  return "\\b";
                case "\x09":
                  return "\\t";
                case "\x1a":
                  return "\\z";
                case "\n":
                  return "\\n";
                case "\r":
                  return "\\r";
                case "\"":
                case "'":
                case "\\":
                case "%":
                  return "\\"+char; // prepends a backslash to backslash, percent,
                                    // and double/single quotes
              }
            });
          }
          var firstname = document.getElementsByName("firstname");
          mysql_real_escape_string(firstname);


        </script>


      </form>
    </div>
  </div>
</div>



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
