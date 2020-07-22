<%--
  Created by IntelliJ IDEA.
  User: mano
  Date: 3/23/2020
  Time: 9:01 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page contentType="text/html;charset=UTF-8" language="java"  %>
<%@page import="java.util.List"%>
<%@page import="com.UploadDetail"%>
<%
  response.setHeader("Cache-Control","no-cache");
  response.setHeader("Cache-Control","no-store");
  response.setHeader("Pragma","no-cache");
  response.setDateHeader ("Expires", 0);
  if(session.getAttribute("user")==null)

    response.sendRedirect("index.jsp");

%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page import="javax.mail.Session" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.OutputStream" %>
<%@ page import="java.util.Base64" %>
<%@ page import="java.io.InputStream" %>

<%
  String id = request.getParameter("userId");
  String driverName = "com.mysql.jdbc.Driver";
  String connectionUrl = "jdbc:mysql://node4406-cd-services.lon.wafaicloud.com/";
  String dbName = "login";
  String userId = "root";
  String password = "piMVjQJqPw";


  try {
    Class.forName(driverName);
  } catch (ClassNotFoundException e) {
    e.printStackTrace();
  }

  Connection connection = null;
  Statement statement = null;
  ResultSet resultSet = null;
%>


<%
  Integer hitsCount = (Integer)application.getAttribute("hitCounter");
  if( hitsCount ==null || hitsCount == 0 ) {
            /* First visit */
    hitsCount = 1;
  } else {
            /* return visit */

    hitsCount += 1;
  }
  application.setAttribute("hitCounter", hitsCount);
%>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <meta name="description" content="">
  <meta name="author" content="">

  <title></title>

  <!-- Bootstrap Core CSS -->
  <link href="../css/bootstrap.min.css" rel="stylesheet">

  <link rel="stylesheet" href="Table/jquery.dataTables.min.css">



  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <link rel="stylesheet" href="https://cdn.datatables.net/1.10.21/css/jquery.dataTables.min.css">
  <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
  <script src="https://cdn.datatables.net/1.10.21/js/jquery.dataTables.min.js"></script>



  <!-- MetisMenu CSS -->
  <link href="../css/metisMenu.min.css" rel="stylesheet">

  <!-- Timeline CSS -->
  <link href="../css/timeline.css" rel="stylesheet">

  <!-- Custom CSS -->
  <link href="../css/startmin.css" rel="stylesheet">

  <!-- Morris Charts CSS -->
  <link href="../css/morris.css" rel="stylesheet">

  <!-- Custom Fonts -->
  <link href="../css/font-awesome.min.css" rel="stylesheet" type="text/css">

  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/respond.js/1.4.2/respond.min.js"></script>
  <![endif]-->
  <style>


    table.dataTable thead .sorting:after,
    table.dataTable thead .sorting:before,
    table.dataTable thead .sorting_asc:after,
    table.dataTable thead .sorting_asc:before,
    table.dataTable thead .sorting_asc_disabled:after,
    table.dataTable thead .sorting_asc_disabled:before,
    table.dataTable thead .sorting_desc:after,
    table.dataTable thead .sorting_desc:before,
    table.dataTable thead .sorting_desc_disabled:after,
    table.dataTable thead .sorting_desc_disabled:before {
      bottom: .5em;
    }
    .profile-img .file {
      position: relative;
      overflow: hidden;
      margin-top: -20%;
      width: 100%;
      border: none;
      border-radius: 0;
      font-size: 15px;
      background: #212529b8;
    }
    .profile-img .file input {
      position: absolute;
      opacity: 0;
      right: 0;
      top: 0;
    }
  </style>
</head>
<body>




<div id="wrapper">

  <!-- Navigation -->
  <nav class="navbar navbar-inverse navbar-fixed-top"  role="navigation" style="background-color:#008B8B; border-color:#008B8B ;">
    <div class="navbar-header">
      <a class="navbar-brand" href="index.html">
        <div style="color:white; font-size:30px">CD Services</b></div>
      </a>
    </div>

    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
      <span class="sr-only"></span>
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
    </button>




    </li>
    <ul class="nav navbar-right navbar-top-links" style="background-color:#008B8B;" >
      <li class="dropdown navbar-inverse"style="background-color:#008B8B;">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#"style="background-color:#008B8B;">
          <i class="fa fa-bell fa-fw" style="color:white;"></i> <b class="caret" style="color:white;"></b>
        </a>
        <ul class="dropdown-menu dropdown-alerts">
          <li>
            <a href="#">
              <div>
                <i class="fa fa-twitter fa-fw"></i> 3 New messages
                <span class="pull-right text-muted small">12 minutes ago</span>
              </div>
            </a>
          </li>




        </ul>
      </li>
      <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#" style="background-color:#008B8B; color:white;">
          <i class="fa fa-user fa-fw" style="color:white;"></i> <%

          String email=(String)session.getAttribute("email");

          out.print(email);

        %><b class="caret" style="color:white;"></b>
        </a>
        <ul class="dropdown-menu dropdown-user">
          <li><a href="customerprofile.jsp"><i class="fa fa-user fa-fw"></i> User Profile</a>
          <li class="divider"></li>
          <li><a href="/LogoutServlet"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
          </li>
        </ul>
      </li>
    </ul>
  </nav>
  <!-- /.navbar-top-links -->

  <div class="navbar-default sidebar" role="navigation">
    <div class="sidebar-nav navbar-collapse">
      <ul class="nav" id="side-menu">
        <br>
        <br>
        <br>
        <br>

        <li>
          <a href="customerdashboad.jsp" class="active"><i class="fa fa-dashboard fa-fw"></i>  Customer Dashboard</a>
        </li>
        <li>
          <a href="customerprofile.jsp"><i class="fa fa-table fa-fw"></i>Create Profile</a>
        </li>
        <li>
          <a href="customerinfo.jsp"><i class="fa fa-table fa-fw"></i>View General info</a>
        </li>
        <li>
          <a href="placeorder.jsp"><i class="fa fa-table fa-fw"></i>Place Order</a>
        </li>

        <li>
          <a href="CheckProducerRating.jsp"><i class="fa fa-table fa-fw"></i>Rate Producer</a>
        </li>

      </ul>
    </div>
  </div>
  <div id="page-wrapper">
    <div class="container-fluid">
      <div class="row">
        <div class="col-lg-12">
          <h1 class="page-header">Size Information</h1>
        </div>
        <!-- /.col-lg-12 -->
      </div>
      <!-- /.row -->
      <div class="row">
        <div class="col-lg-12">
          <div class="row">
            <div class="col-sm-3"><!--left col-->
              <br>
              <br>
              <br>
              <br>

            </div><!--/col-3-->

            <ul class="nav nav-tabs">

              <li class="active"><a data-toggle="tab" href="#home"><p class="text-info"><b>Order Ratings</b></p></a></li>

            </ul>
            <br>
            <form class="form" action="ProducerRateProfile.jsp" method="post" id="registrationForm">
              <div class="col-xs-6">
                <label for="email"><h4>Enter Tailor Email</h4></label>
                <input type="email" required="true" rows="4" class="form-control" name="email" id="email" placeholder="Give Tailor Email" title="enter Tailor email to view Ratings Profile."/>
              </div>



              <div class="form-group">
                <div class="col-xs-12">
                  <br>
                  <a href="rating.jsp"><button  class="btn btn-lg btn-success" type="submit"><i class="glyphicon glyphicon-ok-sign"></i>View</button></a>
                </div>
              </div>


            </form>
          </div>

        </div><!--/col-9-->
      </div><!--/row-->
    </div>
  </div>
</div>

</div>

</div>
<!-- /#wrapper -->

<!-- jQuery -->




<script src="Table/jquery-3.5.1.js"></script>

<script src="Table/jquery.dataTables.min.js"></script>

<script>
  $(document).ready(function () {
    $('#dtVerticalScrollExample').DataTable({
      "scrollY": "200px",
      "scrollCollapse": true,
    });
    $('.dataTables_length').addClass('bs-select');
  });
</script>


<script src="../js/jquery.min.js"></script>

<!-- Bootstrap Core JavaScript -->
<script src="../js/bootstrap.min.js"></script>

<!-- Metis Menu Plugin JavaScript -->
<script src="../js/metisMenu.min.js"></script>

<!-- Morris Charts JavaScript -->
<script src="../js/raphael.min.js"></script>
<script src="../js/morris.min.js"></script>
<script src="../js/morris-data.js"></script>

<!-- Custom Theme JavaScript -->
<script src="../js/startmin.js"></script>

</body>
</html>
