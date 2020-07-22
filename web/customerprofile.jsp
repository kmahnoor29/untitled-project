<%--
  Created by IntelliJ IDEA.
  User: mano
  Date: 1/28/2020
  Time: 9:17 PM
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


<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="description" content="">

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
  <form   method="post" action="CustomerServlet" enctype="multipart/form-data">
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
          <i class="fa fa-user fa-fw" style="color:white;"></i>
          <%
            if(session.getAttribute("email")!=null) {
              String email1 = (String) session.getAttribute("email");

              out.print(email1);
            }
          %>

          <b class="caret" style="color:white;"></b>
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
          <h1 class="page-header"> Customer Dashboard</h1>
        </div>
        <!-- /.col-lg-12 -->
      </div>
      <!-- /.row -->
      <div class="row">
        <div class="col-lg-12">
          <div class="row">
            <div class="col-sm-3"><!--left col-->


              <div class="text-center">

                <h6><b>Upload | <a href="customerinfo.jsp">View</a></b><br/><br/></h6>

                <input type="file" name="image" class="text-center center-block file-upload">

              </div></hr><br>



            </div><!--/col-3-->
            <div class="col-sm-9">
              <ul class="nav nav-tabs">
                <li class="active"><a data-toggle="tab" href="#home">Personal Information</a></li>
              </ul>


              <div class="tab-content">
                <div class="tab-pane active" id="home">
                  <hr>
                  <form class="form" action="##" method="post" id="registrationForm">
                    <div class="form-group">

                      <div class="col-xs-6">
                        <label for="firstname"><h4>Describe Yourself</h4></label>
                        <input  required="true" pattern="[a-zA-Z ]*$" rows="4" name="firstname" class="form-control" name="firstname" id="firstname" placeholder="Description" title="enter your Experiences if any."/>
                      </div>
                    </div>
                    <div class="form-group">

                      <div class="col-xs-6">
                        <label for="lastname"><h4>Preferences</h4></label>
                        <input required="true" pattern="[a-zA-Z ]*$"  row="4" class="form-control" name="lastname" id="lastname" placeholder="Preferences" title="enter Likes and Dislikes if any."/>
                      </div>
                    </div>

                    <div class="form-group">

                      <div class="col-xs-6">
                        <label for="phone"><h4>Phone</h4></label>
                        <input type="text" pattern="^[0-9]*$" required="true" class="form-control" name="phone" id="phone" placeholder="enter phone" title="enter your phone number if any.">
                      </div>
                    </div>

                    <div class="form-group">
                      <div class="col-xs-6">
                        <label for="cnic"><h4>CNIC</h4></label>
                        <input type="text" pattern="^[0-9]*$" class="form-control" required="true" name="cnic" id="cnic" placeholder="enter CNIC" title="enter your mobile number if any.">
                      </div>
                    </div>
                    <div class="form-group">

                      <div class="col-xs-6">
                        <label for="email"><h4>Safety Email</h4></label>
                        <input type="email" class="form-control"  name="email" id="email" value="
                        <%
                         String email1 = (String) session.getAttribute("email");
                    out.print(email1); %>" placeholder="you@email.com" title="enter your email.">
                      </div>
                    </div>
                    <div class="form-group">

                      <div class="col-xs-6">
                        <label for="address"><h4>Address</h4></label>
                        <input type="text" class="form-control"  pattern="^\w+( \w+)*$" required="true" name="address" id="address" placeholder="somewhere" title="enter a location">
                      </div>
                    </div>


                    <div class="form-group">
                      <div class="col-xs-12">
                        <br>
                        <button class="btn btn-lg btn-success" type="submit"><i class="glyphicon glyphicon-ok-sign"></i> Save</button>

                      </div>
                    </div>

                  </form>
                  <hr>

                </div><!--/tab-pane-->




              </div><!--/tab-content-->

            </div><!--/col-9-->
          </div><!--/row-->
        </div>
      </div>


    </div>

  </div>
</form>
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
