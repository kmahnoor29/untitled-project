<%--
  Created by IntelliJ IDEA.
  User: mano
  Date: 3/22/2020
  Time: 4:56 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
  response.setHeader("Cache-Control","no-cache");
  response.setHeader("Cache-Control","no-store");
  response.setHeader("Pragma","no-cache");
  response.setDateHeader ("Expires", 0);
  if(session.getAttribute("user")==null)

    response.sendRedirect("index.jsp");

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
  <link href="../../css/bootstrap.min.css" rel="stylesheet">

  <!-- MetisMenu CSS -->
  <link href="../../css/metisMenu.min.css" rel="stylesheet">

  <!-- Timeline CSS -->
  <link href="../../css/timeline.css" rel="stylesheet">

  <!-- Custom CSS -->
  <link href="../../css/startmin.css" rel="stylesheet">

  <!-- Morris Charts CSS -->
  <link href="../../css/morris.css" rel="stylesheet">

  <!-- Custom Fonts -->
  <link href="../../css/font-awesome.min.css" rel="stylesheet" type="text/css">

  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/respond.js/1.4.2/respond.min.js"></script>
  <![endif]-->
  <style>
    .box{

      color: #fff;

      padding: 20px;

      display: none;

      margin-top: 20px;

    }
    .red{ background: #ff0000; }
  </style>
  <script>

    $(document).ready(function(){

      $('input[type="radio"]').click(function(){

        var inputValue = $(this).attr("value");

        var targetBox = $("." + inputValue);

        $(".box").not(targetBox).hide();

        $(targetBox).show();

      });

    });
  </script>
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




        </ul>
      </li>
      <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#" style="background-color:#008B8B; color:white;">
          <i class="fa fa-user fa-fw" style="color:white;"></i>  <%
          if(session.getAttribute("email")!=null) {
            String email1 = (String) session.getAttribute("email");

            out.print(email1);
          }
        %><b class="caret" style="color:white;"></b>
        </a>
        <ul class="dropdown-menu dropdown-user">
          <li><a href="#"><i class="fa fa-user fa-fw"></i> User Profile</a>
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
      </ul>
    </div>
  </div>
  <div id="page-wrapper">
    <div class="container-fluid">
      <div class="row">
        <div class="col-lg-12">
          <h1 class="page-header"> Customer Dashboard</h1>
        </div>
        <!-- /.col-lg-12 -->
      </div>
      <!-- /.row -->


      <div class="row">

        <div class="col-sm-4">

          <div  class="card" style="background-color:#F08080 ;">
            <img  src="../../images/size.png" alt="" style="width:100%;" >

          </div>
        </div>
        <div class="col-sm-8">
          <br>
          <br>
          <p class="card-text"><font size="4">Select you size and give images</font> </p>

          <br>
          <br>

          <a class="btn btn-success" style="background-color:#008B8B;" href="standardsize.jsp"  > <span>Select Standard Size</span></a>

          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

          <a class="btn btn-success" style="background-color:#008B8B;" href="customsize.jsp"> <span>Customized Measurenment</span></a>

        </div>


      </div><!--/col-9-->
    </div><!--/row-->
  </div>
</div>

</div>
</div>

</div>

</div>
<!-- /#wrapper -->

<!-- jQuery -->
<script src="../../js/jquery.min.js"></script>

<!-- Bootstrap Core JavaScript -->
<script src="../../js/bootstrap.min.js"></script>

<!-- Metis Menu Plugin JavaScript -->
<script src="../../js/metisMenu.min.js"></script>

<!-- Morris Charts JavaScript -->
<script src="../../js/raphael.min.js"></script>
<script src="../../js/morris.min.js"></script>
<script src="../../js/morris-data.js"></script>

<!-- Custom Theme JavaScript -->
<script src="../../js/startmin.js"></script>

</body>


</html>
