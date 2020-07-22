<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.DriverManager" %>
<!doctype html>
<html lang="en">
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

  <link rel="stylesheet" href="custom.css">
  <style>
    table {
      border-collapse: collapse;
    }
    th,
    td {
      border: 1px solid #c6c7cc;
      padding: 10px 15px;
    }
    th {
      font-weight: bold;
    }
    table.scroll {
      width: 716px; /* 140px * 5 column + 16px scrollbar width */
      border-spacing: 0;
      border: 2px solid black;
    }
    table.scroll tbody,
    table.scroll thead tr { display: block; }
    table.scroll tbody {
      height: 100px;
      overflow-y: auto;
      overflow-x: hidden;
    }
    table.scroll tbody td,
    table.scroll thead th {
      width: 140px;
      border-right: 1px solid black;
    }
    table.scroll thead th:last-child {
      width: 156px; /* 140px + 16px scrollbar width */
    }
    thead tr th {
      height: 30px;
      line-height: 30px;
      /*text-align: left;*/
    }
    tbody { border-top: 2px solid black; }
    tbody td:last-child, thead th:last-child {
      border-right: none !important;
    }

    .comments-main{
      background: #FFF;
    }
    .comment time, .comment:hover time,.icon-rocknroll, .like-count {
      -webkit-transition: .25s opacity linear;
      transition: .25s opacity linear;
    }
    .comments-main ul li{
      list-style: none;
    }
    .comments .comment {
      padding: 10px 30px;
      background: lightblue;
    }
    .comments .comment:hover time{
      opacity: 1;
    }
    .comments .user-img img {
      width: 50px;
      height: 50px;
    }
    .comments .comment h4 {
      display: inline-block;
      font-size: 18px;
    }
    .comments .comment h4 a {
      color: #404040;
      text-decoration: none;
    }
    .comments .comment .icon-rocknroll {
      color: #545454;
      font-size: .85rem;
    }
    .comments .comment .icon-rocknroll:hover {
      opacity: .5;
    }
    .comments .comment time,.comments .comment .like-count,.comments .comment .icon-rocknroll {
      font-size: .75rem;
      opacity: 0;
    }
    .comments .comment time, .comments .comment .like-count {
      font-weight: 300;
    }
    .comments .comment p {
      font-size: 13px;
    }
    .comments .comment p .reply {
      color: #BFBFA8;
      cursor: pointer;
    }
    .comments .comment .active {
      opacity: 1;
    }


    .icon-rocknroll {
      background: none;
      outline: none;
      cursor: pointer;
      margin: 0 .200rem 0 0;
    }
    .comments .comment:hover .icon-rocknroll,.comments .comment:hover .like-count {
      opacity: 1;
    }
    .comment-box-main{
      background: white;
    }
    @media (min-width: 420px) and (max-width: 500px){
      .comments .comment h4 {
        font-size: 12px;
      }
      .comments .comment p{
        font-size: 15px;
      }
      .comment-box-main .send-btn button{
        margin-left: 10px;
      }
    }
  </style>
  <script>
    Vue.component('like', {
      template: "<div class='like-data float-right text-white'><button class='icon-rocknroll mr-1 p-0 border-0' v-class='active: liked' v-on='click: toggleLike'><i class='fa fa-thumbs-up text-white' aria-hidden='true'></i></button><span class='like-count' v-class='active: liked'>{{ likesCount }}</span></div>",
      data: function() {
        return {
          liked: false,
          likesCount: 0
        }
      },
      methods: {
        toggleLike: function() {
          this.liked = !this.liked;
          this.liked ? this.likesCount++ : this.likesCount--;
        }
      }
    });
    new Vue({
      el: '.comments-main',
    });
  </script>
</head>
<body>

<%
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
          <i class="fa fa-user fa-fw" style="color:white;"></i><%

          String email=(String)session.getAttribute("email");

          out.print(email);

        %>
          <b class="caret" style="color:white;"></b>
        </a>
        <ul class="dropdown-menu dropdown-user">
          <li><a href="customerinfo.jsp"><i class="fa fa-user fa-fw"></i> User Profile</a>
          <li class="divider"></li>
          <li><a href="LogoutServlet"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
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
          <a href="customerprofile.jsp"><i class="fa fa-table fa-fw"></i>Create Profile</a>
        </li>
        <li>
          <a href="customerinfo.jsp"><i class="fa fa-user fa-fw"></i>View General info</a>
        </li>
        <li>
          <a href="placeorder.jsp"><i class="fa fa-shopping-cart fa-fw"></i>Place Order</a>
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
          </br>
          <div class="container">
            <div class="row mt-5">
              <div class="col-md-6 offset-md-3 col-sm-6 offset-sm-3 col-12 comments-main pt-4 rounded">
                <div class="col-md-8 col-xs-8">

                </div>
                </br>



                        <table class="scroll" border="1" bgcolor="#ADDFFF" style="font-size: small;">
                          <%
                            try{
                              int count=0;
                              connection = DriverManager.getConnection(connectionUrl + dbName, userId, password);
                              statement=connection.createStatement();
                              String sql ="SELECT  count(message) FROM chat where username='"+email+"' OR username2 = '"+email+"'";
                              resultSet = statement.executeQuery(sql);
                              while(resultSet.next()){

                          %>


                          <tr>
                            <th>No. Messages:</th>
                            <td><%=resultSet.getInt(1) %></td>
                            <%
                                }

                              } catch (Exception e) {
                                e.printStackTrace();
                              }
                            %>
                          </tr>





                          <tr>
                            <%


                              try{
                                connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
                                statement=connection.createStatement();
                                String sql ="SELECT DISTINCT username2 FROM chat where username='"+email+"' OR username2 = '"+email+"'";
                                resultSet = statement.executeQuery(sql);
                                while(resultSet.next()){

                            %>




                            <th>Sender Name:</th>
                            <td><%=resultSet.getString("username2") %></td>

                            <%
                                }

                              } catch (Exception e) {
                                e.printStackTrace();
                              }
                            %>

                          </tr>

                          <tr>
                            <th>Open Chat</th>
                            <td><a href="userChat.jsp"><button type="button" class="delete">Open Chat Box</button></a></td>
                          </tr>
                        </table>

                </br>

              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</body>
<script src='https://cdnjs.cloudflare.com/ajax/libs/vue/0.12.14/vue.min.js'></script>
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
</html>