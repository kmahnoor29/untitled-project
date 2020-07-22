<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.DriverManager" %>
<!DOCTYPE html>
<html lang="en">
<head>

  <%
    String email1=(String)session.getAttribute("email");
  %>

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

  <style>

    @import url(//netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css);

    fieldset, label { margin: 0; padding: 0; }
    body{ margin: 20px; }
    h1 { font-size: 1.5em; margin: 10px; }

    /****** Style Star Rating Widget *****/

    .rating {
      border: none;
      float: left;
    }

    .rating > input { display: none; }
    .rating > label:before {
      margin: 5px;
      font-size: 1.25em;
      font-family: FontAwesome;
      display: inline-block;
      content: "\f005";
    }

    .rating > .half:before {
      content: "\f089";
      position: absolute;
    }

    .rating > label {
      color: #ddd;
      float: right;
    }

    /***** CSS Magic to Highlight Stars on Hover *****/

    .rating > input:checked ~ label, /* show gold star when clicked */
    .rating:not(:checked) > label:hover, /* hover current star */
    .rating:not(:checked) > label:hover ~ label { color: #FFD700;  } /* hover previous stars in list */

    .rating > input:checked + label:hover, /* hover current star when changing rating */
    .rating > input:checked ~ label:hover,
    .rating > label:hover ~ input:checked ~ label, /* lighten current selection */
    .rating > input:checked ~ label:hover ~ label { color: #FFED85;  }
    .button {
      background-color: #4CAF50; /* Green */
      border: none;
      color: white;
      padding: 16px 32px;
      text-align: center;
      text-decoration: none;
      display: inline-block;
      font-size: 16px;
      margin: 4px 2px;
      transition-duration: 0.4s;
      cursor: pointer;
    }

    .button1 {
      background-color: white;
      color: black;
      border: 2px solid #4CAF50;
    }

    .button1:hover {
      background-color: #4CAF50;
      color: white;
    }

    .button2 {
      background-color: white;
      color: black;
      border: 2px solid #008CBA;
    }

    .button2:hover {
      background-color: #008CBA;
      color: white;
    }

    .button3 {
      background-color: white;
      color: black;
      border: 2px solid #f44336;
    }

    .button3:hover {
      background-color: #f44336;
      color: white;
    }

    .button4 {
      background-color: white;
      color: black;
      border: 2px solid #e7e7e7;
    }

    .button4:hover {background-color: #e7e7e7;}

    .button5 {
      background-color: white;
      color: black;
      border: 2px solid #555555;
    }

    .button5:hover {
      background-color: #555555;
      color: white;
    }
    #borderDemo {
      border-bottom: 28px solid #2DA47E;
      border-radius: 40px 40px 40px 40px;

      height:60px;
      width:150px;
    text-align: center;
    }


  </style>
</head>
<body>
<%String driverName = "com.mysql.jdbc.Driver";
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

String userEmail = request.getParameter("email");

String OrderId = request.getParameter("id");

%>
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




  </nav>
  <!-- /.navbar-top-links -->

  <div id="page-wrapper">
    <div class="container-fluid">

      <!-- /.row -->
      <div class="row">
        <div class="col-sm-4">
        </div>
        <div class="col-sm-8">
          <h3>Please Select Rating.</h3>
        </div>

      </div>
      </br>
      </br>
      <div class="row">
        <div class="col-sm-2">

        </div>
        <div class="col-sm-10">

          <form class="form" action="insertrating.jsp" method="post">


            <fieldset class="rating" width="50px">

              <input  type="radio" id="star5" name="rating" value="5"  />
              <label class = "full" for="star5" title="Awesome - 5 stars">

              </label>
              <input type="radio" id="star4half" name="rating" value="4.5" />
              <label class="half" for="star4half" title="Pretty good - 4.5 stars">

              </label>
              <input type="radio" id="star4" name="rating" value="4" />
              <label class = "full" for="star4" title="Pretty good - 4 stars">

              </label>
              <input type="radio" id="star3half" name="rating" value="3.5" /><label class="half" for="star3half" title="Meh - 3.5 stars">

            </label>
              <input type="radio" id="star3" name="rating" value="3" />
              <label class = "full" for="star3" title="Meh - 3 stars">

              </label>
              <input type="radio" id="star2half" name="rating" value="2.5" />
              <label class="half" for="star2half" title="Kinda bad - 2.5 stars">

              </label>
              <input type="radio" id="star2" name="rating" value="2" />
              <label class = "full" for="star2" title="Kinda bad - 2 stars">

              </label>
              <input type="radio" id="star1half" name="rating" value="1.5" />
              <label class="half" for="star1half" title="Meh - 1.5 stars">

              </label>
              <input type="radio" id="star1" name="rating" value="1" />
              <label class = "full" for="star1" title="Sucks big time - 1 star">

              </label>
              <input type="radio" id="starhalf" name="rating" value="0.5" />
              <label class="half" for="starhalf" title="Sucks big time - 0.5 stars">

              </label>
            </fieldset>
            <br>
            <br>
            <br>

            <div class="col-xs-6">
              <label for="orderid"><h4>Your Name</h4></label>
              <input pattern="^\w+( \w+)*$" required="true" rows="4" class="form-control" name="name" id="orderid" placeholder="Give Full Name" title="enter Full Name  to rate if any."/>
            </div>


            <div class="col-xs-6">
              <label for="email"><h4>Your Email</h4></label>
              <input type="email"  required="true" rows="4" class="form-control"  name="email" id="email" placeholder="Give user email " title="enter User Email to rate if any."/>
            </div>



            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>

            <div class="col-xs-6">
              <label for="email"><h4>Customer Email</h4></label>
              <input type="email"  required="true" rows="4" class="form-control"  name="userEmail" id="userEmail" value="<% out.print(userEmail); %>" readonly />
            </div>

            <div class="col-xs-6">
              <label for="email"><h4>Order ID</h4></label>
               <input type="number"  required="true" rows="4" class="form-control"  name="OrderId" id="OrderId" value="<% out.print(OrderId); %>" readonly/>
            </div>



            <div class="form-group">
              <div class="col-xs-12">
                <br>
                <button  class="btn btn-lg btn-success" type="submit"><i class="glyphicon glyphicon-ok-sign"></i>Rate User</button>
              </div>
            </div>




          </form>


        </div>
      </div>



    </div>
  </div>


</div>








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
