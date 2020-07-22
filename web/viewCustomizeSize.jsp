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
      <a class="navbar-brand" href="home.jsp">
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
          <li class="divider"></li>
          <li><a href="/Logout3Servlet"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
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
          <a href="admindashboard.jsp" class="active"><i class="fa fa-dashboard fa-fw"></i> Admin Dashboard</a>
        </li>
        <li>
          <a href="registeredcustomer.jsp"><i class="fa fa-user fa-fw"></i> Request Customers</a>
        </li>

        <li>
          <a href="registeredproducer.jsp"><i class="fa fa-user fa-fw"></i> Request Tailors</a>
        </li>

        <li>
          <a href="viewcostumer.jsp"><i class="fa fa-user fa-fw"></i> Customer Details</a>
        </li>
        <li>
          <a href="viewproducers.jsp"><i class="fa fa-user fa-fw"></i> Tailor Details</a>
        </li>
        <li>
          <a href="viewStandardSize.jsp"><i class="fa fa-user fa-fw"></i>Standard Order Details</a>
        </li>

        <li>
          <a href="viewCustomizeSize.jsp"><i class="fa fa-user fa-fw"></i>Customize Order Details</a>
        </li>
        <li>
          <a href="AdminRatingList.jsp"><i class="fa fa-user fa-fw"></i>Rating Details</a>
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

              <li class="active"><a data-toggle="tab" href="#home"><p class="text-info"><b>Custom Size Order Data</b></p></a></li>

            </ul>
            <br>

            <table id="dtVerticalScrollExample" class="table table-striped table-bordered table-sm" cellspacing="0"
                   width="100%">

              <thead>
              <tr>
                <td>Order ID</td>
                <td>Piece</td>
                <td>Fabric</td>
                <td>Material</td>
                <td>Chest</td>
                <td>Waist</td>
                <td>Hip</td>
                <td>Shoulders</td>
                <td>Sleeve Length</td>
                <td>Price</td>
                <td>Description</td>
                <td>Email</td>
                <td>Order Views</td>
                <td>Delete Order</td>
                <td>Images</td>

              </tr>
              </thead>

              <%


                try{
                  connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
                  statement=connection.createStatement();
                  String sql ="SELECT * FROM custom";
                  resultSet = statement.executeQuery(sql);
                  while(resultSet.next()){



              %>
              <tbody>
              <tr>
                <td><strong><%=resultSet.getString("id") %></strong></td>
                <td><%=resultSet.getString("piece") %></td>
                <td><%=resultSet.getString("fabric") %></td>
                <td><%=resultSet.getString("material") %></td>
                <td><%=resultSet.getString("chest") %></td>
                <td><%=resultSet.getString("waist") %></td>
                <td><%=resultSet.getString("hip") %></td>
                <td><%=resultSet.getString("shoulders") %></td>
                <td><%=resultSet.getString("sleevelength") %></td>
                <td><%=resultSet.getString("price") %></td>
                <td><%=resultSet.getString("description") %></td>
                <td><%=resultSet.getString("email") %></td>
                <td><strong>Views <%= hitsCount%></strong></td>
                <td><a href="delete6.jsp?id=<%=resultSet.getString("id") %>"><button type="button" class="delete">Delete</button></a>
                <td> <a id="allFiles" class="hyperLink" href="<%=request.getContextPath()%>/uploadedFilesServlet"><button type="button">Images</button></a>



                    <%
                    }

                  } catch (Exception e) {
                    e.printStackTrace();
                  }
                %>

              </tr>
              </tbody>
            </table>




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
