<%--
  Created by IntelliJ IDEA.
  User: mano
  Date: 1/28/2020
  Time: 9:17 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


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
  <form action="rating2.jsp"  method="post" action="#" >
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

    </nav>
    <!-- /.navbar-top-links -->


    <div id="page-wrapper">
      <div class="container-fluid">
        <div class="row">
          <div class="col-lg-12">
            <h1 class="page-header"> Rating System CD Service</h1>
          </div>
          <!-- /.col-lg-12 -->
        </div>
        <!-- /.row -->
        <div class="row">
          <div class="col-lg-12">
            <div class="row">


              <div class="tab-content">
                <div class="tab-pane active" id="home">
                  <hr>
                  <form class="form" action="##" method="post" id="registrationForm">
                    <div class="col-xs-6">
                      <label for="orderid"><h4>Order ID</h4></label>
                      <input pattern="^[0-9]*$" required="true" rows="4" class="form-control" name="id" id="orderid" placeholder="Give Order ID" title="enter Order ID on producer worked if any."/>
                    </div>


                    <div class="col-xs-6">
                      <label for="email"><h4>Producer Email</h4></label>
                      <input type="email"  required="true" rows="4" class="form-control" name="email" id="email" placeholder="Give user email " title="enter User Email to rate if any."/>
                    </div>
                    <br>

                    <div class="form-group">
                      <div class="col-xs-12">
                        <br>
                        <a href="rating.jsp"><button  class="btn btn-lg btn-success" type="submit"><i class="glyphicon glyphicon-ok-sign"></i>Enter</button></a>
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
