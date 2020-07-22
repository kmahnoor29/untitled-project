<%--
  Created by IntelliJ IDEA.
  User: mano
  Date: 3/23/2020
  Time: 9:08 PM
  To change this template use File | Settings | File Templates.
--%>

<%
  response.setHeader("Cache-Control","no-cache");
  response.setHeader("Cache-Control","no-store");
  response.setHeader("Pragma","no-cache");
  response.setDateHeader ("Expires", 0);

  if(session.getAttribute("user")==null)

    response.sendRedirect("index.jsp");

%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
          <i class="fa fa-user fa-fw" style="color:white;"></i>     <%
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
          <a href="customerdashboard.html" class="active"><i class="fa fa-dashboard fa-fw"></i>Customer Dashboard</a>
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
        <div class="col-sm-3">
        </div>
        <div class="col-sm-9">
          <h3>Please Enter further details and your measurements for the selected Design(inches).</h3>
        </div>

      </div>

      <div class="row">

        <div class="col-sm-4">
          <div  class="card" style="background-color:#F08080 ;">
            <img  src="../../images/s1.jpg" alt="" style="width:100%;" >

          </div>

        </div>
        <div class="col-sm-4">
          <div class="tab-content">

            <form class="form" action="/CustomServlet" method="post" id="registrationForm">
              <div class="form-group">
                <label for="inputState">Stitch by piece</label>
                <select name="piece" id="inputState" class="form-control" data-validate="Option is Required">
                  <option selected>Choose an option</option>
                  <option>1 piece</option>
                  <option>2 piece</option>
                  <option>3 piece</option>
                </select>
              </div>
              <div class="form-group">
                <div class="form-check">
                  <input class="form-check-input" type="radio" name="fabric" id="fabric" value="Branded Unstich Fabric">
                  <label class="form-check-label" for="fabric"> Branded Unstich Fabric</label>
                  <br>
                  <input class="form-check-input" type="radio" name="fabric" id="fabric" value="Local Unstitch Fabric">
                  <label class="form-check-label" for="fabric">Local Unstitch Fabric</label>
                </div>

              </div>
              <div class="form-group">
                <label for="inputAddress">Material</label>
                <input type="text" name="material"pattern="^[a-zA-Z ]*$" class="form-control" id="inputEmail4" data-validate="Material is required">
              </div>
              <div class="form-group">
                <label for="inputAddress">Chest</label>
                <input type="text" name="chest" pattern="^[0-9]*$" class="form-control" id="inputPassword4" data-validate="Chest is required">
              </div>
              <div class="form-group">
                <label for="inputAddress">Waist</label>
                <input type="text" name="waist" pattern="^[0-9]*$" class="form-control" id="inputAddress" data-validate="Waist is required">
              </div>

              <div class="form-group">
                <label for="inputAddress2">Hip</label>
                <input type="text" name="hip" pattern="^[0-9]*$" class="form-control" id="inputAddress2" data-validate="Hip is required">
              </div>

              <div class="form-group">
                <label for="inputCity">Shoulders</label>
                <input type="text" name="shoulders" pattern="^[0-9]*$" class="form-control" id="inputCity"data-validate="Shoulders is required">
              </div>

              <div class="form-group">
                <label for="inputCity">Sleeve Length Size</label>
                <input type="text" name="sleevelength" pattern="^[0-9]*$" class="form-control" id="inputCity"data-validate="Sleeve Length is required">
              </div>

              <div class="form-group">
                <label for="inputCity">Price (Rupees)</label>
                <input type="text" name="price" pattern="^[0-9]*$" class="form-control" id="inputCity"data-validate="Price is required">
              </div>

              <div class="form-group">
                <label for="exampleTextarea">Description</label>
                <textarea class="form-control"  pattern="^\w+( \w+)*$" name="description" id="exampleTextarea" rows="3" data-validate="Description is required"></textarea>
              </div>
              <div class="form-group">
                <label for="inputAddress3">Email</label>
                <input type="text"  class="form-control" id="inputAddress3" name="email" value="<%
                         String email1 = (String) session.getAttribute("email");
                    out.print(email1); %>" data-validate="Email is required">
              </div>
              <center><button onclick="clearForm(this.form);" type="reset"><a class="btn btn-success" style="background-color:#008B8B;" > <span>Reset</span></a></button>
                <button type="submit"><a class="btn btn-success" style="background-color:#008B8B;" > <span>Confirm Order</span></a></button>
              </center>

            </form>
          </div>
          <div class="col-sm-4">



          </div><!--/tab-content-->

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

<script>function clearForm(oForm) {

  var elements = oForm.elements;

  oForm.reset();

  for(i=0; i<elements.length; i++) {

    field_type = elements[i].type.toLowerCase();

    switch(field_type) {

      case "text":
      case "password":
      case "textarea":
      case "hidden":

        elements[i].value = "";
        break;

      case "radio":
      case "checkbox":

        if (elements[i].checked) {
          elements[i].checked = false;
        }
        break;

      case "select-one":
      case "select-multi":
        elements[i].selectedIndex = -1;
        break;

      default:
        break;
    }
  }
}</script>

</body>
</html>
