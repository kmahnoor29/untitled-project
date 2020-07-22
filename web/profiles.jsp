<%--
  Created by IntelliJ IDEA.
  User: mano
  Date: 1/27/2020
  Time: 7:04 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <style>
    html {
      box-sizing: border-box;
    }

    *, *:before, *:after {
      box-sizing: inherit;
    }

    .column {
      float: left;
      width: 33.3%;
      margin-bottom: 16px;
      padding: 0 8px;
    }

    @media screen and (max-width: 650px) {
      .column {
        width: 100%;
        display: block;
      }
    }

    .card {
      box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
    }

    .container {
      padding: 0 16px;
    }

    .container::after, .row::after {
      content: "";
      clear: both;
      display: table;
    }

    .title {
      color: grey;
    }

    .button {
      border: none;
      outline: 0;

      padding: 8px;
      color: white;
      background-color: white;
      text-align: center;
      cursor: pointer;
      width: 100%;
    }

    .button:hover {
      background-color: black;
    }



    .topnav {
      background-color: #008B8B;
      overflow: hidden;
    }

    /* Style the links inside the navigation bar */
    .topnav a {
      float: left;
      color: #f2f2f2;
      text-align: center;
      padding: 14px 16px;
      text-decoration: none;
      font-size: 17px;
    }

    /* Change the color of links on hover */
    .topnav a:hover {
      background-color: #ddd;
      color: black;
    }

    /* Add a color to the active/current link */
    .topnav a.active {
      background-color: #4CAF50;
      color: white;
    }

    #header{
      font-family: Franklin Gothic Medium, Arial Narrow, Arial, sans-serif;
      color: white;
      font-size: 70px;
    }
  </style>
</head>
<body>

<br>

<div class="topnav">
  <div id="header">
    <center>CD Services</center>
  </div>

</div>

<br>

<br>

<div class="row">
  <div class="column">

    <div  class="card" style="background-color:#008B8B;">
      <img  src="admin.jpg" alt="" style="width:100%; height:70% " >
      <div class="container">
        <h2 style="text-align:center;">
          <a href="adminlogin.jsp" style="text-decoration: none;">
            <font style="font-family: Franklin Gothic Medium, Arial Narrow, Arial, sans-serif;" color="white">
              Admin</font>
          </a>
        </h2>
      </div>
    </div>

  </div>
  <div class="column">
    <div class="card" style="background-color:#008B8B;">
      <img src="Producer.png" alt="" style="width:100%;  height:70% ">
      <div class="container">
        <h2 style="text-align:center;">
          <a href="index2.jsp" style="text-decoration: none;">

            <font style="font-family: Franklin Gothic Medium, Arial Narrow, Arial, sans-serif;" color="white">
              Tailor
            </font>
          </a></h2>
      </div>
    </div>
  </div>
  <div class="column"  >
    <div class="card" style="background-color:#008B8B;">
      <img src="Consumer.jpg" alt="" style="width:100%;  height:70% ">
      <div class="container" style="text:center">
        <h2 style="text-align:center;">  <a href="index.jsp" style="text-decoration: none;">
          <font style="font-family: Franklin Gothic Medium, Arial Narrow, Arial, sans-serif;" color="white">
            Customer
          </font>
        </a></h2>

      </div>
    </div>
  </div>
</div>

</body>
</html>
