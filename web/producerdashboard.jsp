<%--
  Created by IntelliJ IDEA.
  User: mano
  Date: 2/3/2020
  Time: 3:48 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  response.setHeader("Cache-Control","no-cache");
  response.setHeader("Cache-Control","no-store");
  response.setHeader("Pragma","no-cache");
  response.setDateHeader ("Expires", 0);
  if(session.getAttribute("user")==null)

    response.sendRedirect("index2.jsp");

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
          <li>
            <a href="#">
              <div>
                <i class="fa fa-twitter fa-fw"></i> 3 New Orders
                <span class="pull-right text-muted small">12 minutes ago</span>
              </div>
            </a>
          </li>




        </ul>
      </li>
      <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#" style="background-color:#008B8B; color:white;">
          <i class="fa fa-user fa-fw" style="color:white;"></i>   <%


          if(session.getAttribute("email")!=null ){
            String email=(String)session.getAttribute("email");

            out.print(email);
          }
        %><b class="caret" style="color:white;"></b>
        </a>
        <ul class="dropdown-menu dropdown-user">
          <li><a href="producerinfo.jsp"><i class="fa fa-user fa-fw"></i> User Profile</a>
          <li class="divider"></li>
          <li><a href="/Logout2Servlet"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
          </li>
          <li><a href="/ChangePasswordForm2.jsp"><i class="fa fa-sign-out fa-fw"></i> Change Password?</a>
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
          <a href="producerdashboard.jsp" class="active"><i class="fa fa-dashboard fa-fw"></i>  Tailor Dashboard</a>
        </li>
        <li>
          <a href="producerprofile.jsp"><i class="fa fa-user fa-fw"></i>Create Profile</a>
        </li>
        <li>
          <a href="producerinfo.jsp"><i class="fa fa-user fa-fw"></i>View General info</a>
        </li>
        <li>
          <a href="pickorder.jsp"> <i class="fa fa-shopping-cart fa-fw"></i>Pick Order</a>
        </li> <li>
          <a href="CustomerRatingProfile.jsp"> <i class="fa fa-shopping-cart fa-fw"></i>Check Customer Rating Profile</a>
        </li><li>
          <a href="ReportForm2.jsp"> <i class="fa fa-shopping-cart fa-fw"></i>Report Customer</a>
        </li>

      </ul>
    </div>
  </div>


  <div id="page-wrapper">
    <div class="container-fluid">
      <div class="row">
        <div class="col-lg-12">
          <h1 class="page-header">Tailor Dashboard</h1>
        </div>
        <!-- /.col-lg-12 -->
      </div>
      <!-- /.row -->
      <div class="row">
        <div class="col-lg-3 col-md-6">
          <div class="panel panel-primary">
            <div class="panel-heading">
              <div class="row">
                <div class="col-xs-3">
                  <i class="fa fa-user fa-fw"></i>
                </div>
                <div class="col-xs-9 text-right">
                  <div class="huge">
2
                  </div>
                  <div>New Messages!</div>
                </div>
              </div>
            </div>
            <a href="userChat2.jsp">
              <div class="panel-footer">
                <span class="pull-left">View Details</span>
                <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>

                <div class="clearfix"></div>
              </div>
            </a>
          </div>
        </div>
        <div class="col-lg-3 col-md-6">
          <div class="panel panel-green">
            <div class="panel-heading">
              <div class="row">
                <div class="col-xs-3">
                  <i class="fa fa-user fa-fw"></i>
                </div>
                <div class="col-xs-9 text-right">
                  <div class="huge">
200
                  </div>
                  <div>New Orders!</div>
                </div>
              </div>
            </div>
            <a href="pickorder.jsp">
              <div class="panel-footer">
                <span class="pull-left">View Details</span>
                <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>

                <div class="clearfix"></div>
              </div>
            </a>
          </div>
        </div>

        <div class="col-lg-3 col-md-6">
          <div class="panel panel-red">
            <div class="panel-heading">
              <div class="row">
                <div class="col-xs-3">
                  <i class="fa fa-star checked"></i>
                  <span class="fa fa-star checked"></span>

                </div>
                <div class="col-xs-9 text-right">
                  <div class="huge">13</div>
                  <div>My Ratings!</div>
                </div>
              </div>
            </div>
            <a href=RatingLogin.jsp>
              <div class="panel-footer">
                <span class="pull-left">View Details</span>
                <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>

                <div class="clearfix"></div>
              </div>
            </a>
          </div>
        </div>
      </div>

    </div>

  </div>

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
