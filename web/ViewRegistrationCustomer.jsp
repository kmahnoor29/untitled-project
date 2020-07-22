<%--
  Created by IntelliJ IDEA.
  User: mano
  Date: 1/31/2020
  Time: 9:11 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@page language="java" import="java.util.*" %>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Admin</title>

  <!-- Bootstrap Core CSS -->
  <link href="../css/bootstrap.min.css" rel="stylesheet">

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

    #consumers {
      font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
      border-collapse: collapse;
      width: 90%;
    }

    #consumers td, #consumers th {
      border: 1px solid #ddd;
      padding: 8px;
    }

    #consumers tr:nth-child(even){background-color:  #f2f2f2;}

    #consumers tr:hover {background-color: #ddd;}

    #consumers th {
      padding-top: 12px;
      padding-bottom: 12px;
      text-align: left;
      background-color:#008B8B;
      color: white;
      text:bold;
    }
    .button {
      background-color:blue;
      border-color:red;
      color:white;
    }
  </style>
</head>
<body>
<sql:setDataSource
        var="myDS"
        driver="com.mysql.jdbc.Driver"
        url="jdbc:mysql://localhost:3306/login"
        user="root" password=""
        />

<sql:query var="listUsers"   dataSource="${myDS}">
  SELECT * FROM emailvalidation;
</sql:query>
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



    <ul class="nav navbar-right navbar-top-links" style="background-color:#008B8B;" >
      <li class="dropdown navbar-inverse"style="background-color:#008B8B;">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#"style="background-color:#008B8B;">
          <i class="fa fa-bell fa-fw" style="color:white;"></i> <b class="caret" style="color:white;"></b>
        </a>
        <ul class="dropdown-menu dropdown-alerts">
          <li>
            <a href="viewcustomer.html">
              <div>
                <i class="fa fa-comment fa-fw"></i> 3 New Customers
                <span class="pull-right text-muted small">4 minutes ago</span>
              </div>
            </a>
          </li>
          <li>
            <a href="viewtailor.html">
              <div>
                <i class="fa fa-twitter fa-fw"></i> 3 New Tailors
                <span class="pull-right text-muted small">12 minutes ago</span>
              </div>
            </a>
          </li>




        </ul>
      </li>
      <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#" style="background-color:#008B8B; color:white;">
          <i class="fa fa-user fa-fw" style="color:white;"></i> Mahnoor Khan
          <b class="caret" style="color:white;"></b>
        </a>
        <ul class="dropdown-menu dropdown-user">


          <li><a href=""><i class="fa fa-sign-out fa-fw"></i> Logout</a>
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
          <a href="index.html" class="active"><i class="fa fa-dashboard fa-fw"></i> Admin Dashboard</a>
        </li>
        <li>
          <a href="addcustomer.html"><i class="fa fa-user fa-fw"></i> Request Customers</a>
        </li>

        <li>
          <a href="addtailor.html"><i class="fa fa-user fa-fw"></i> Request Tailors</a>
        </li>

        <li>
          <a href="customerdetail.html"><i class="fa fa-user fa-fw"></i> Customer Details</a>
        </li>
        <li>
          <a href="tailordetail.html"><i class="fa fa-user fa-fw"></i> Tailor Details</a>
        </li>


      </ul>
    </div>
  </div>


  <div id="page-wrapper">
    <div class="container-fluid">
      <div class="row">
        <div class="col-lg-12">
          <h1 class="page-header">Admin Dashboard</h1>
        </div>
        <!-- /.col-lg-12 -->
      </div>
      <div class="site-section">
        <div class="container">
          <div class="row">
            <h3>New Registered Customer list</h3>
            <table id="consumers" >
              <tr>


                <th>Email</th>
                <th>Validation Url</th>
              </tr>
              <c:forEach var="user" items="${listUsers.rows}">
                <tr>

                  <td><c:out value="${user.email}" /></td>
                  <td><c:out value="${user.url}" /></td>
                </tr>
              </c:forEach>

            </table>
          </div>
        </div>
      </div>

      <!-- /.row -->
    </div>
    <!-- /.container-fluid -->
  </div>
  <!-- /#page-wrapper -->

</div>
<!-- /#wrapper -->

<!-- jQuery -->
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

