
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<html>
<head>
  <title>Customer Profile Update</title>


  <style>


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

    h1{font-family: Franklin Gothic Medium, Arial Narrow, Arial, sans-serif;}
    input[type=submit] {
      width: 20%;
      background-color: #008B8B;
      color: white;
      padding: 14px 20px;
      margin: 8px 0;
      border: none;
      border-radius: 4px;
      cursor: pointer;
      font-size: 20px;
    }

    input[type=submit]:hover {
      background-color: #008B8B;
    }

    div.container {
      border-radius: 5px;
      background-color: #f2f2f2;
      padding: 20px;



  </style>
<body>
<%

  String id = request.getParameter("id");
  String email = request.getParameter("email");
  String driver = "com.mysql.jdbc.Driver";
  String connectionUrl = "jdbc:mysql://node4406-cd-services.lon.wafaicloud.com/";
  String dbName = "login";
  String userId = "root";
  String password = "piMVjQJqPw";

  try {
    Class.forName(driver);
  } catch (ClassNotFoundException e) {
    e.printStackTrace();
  }
  Connection connection = null;
  Statement statement = null;
  ResultSet resultSet = null;
%>
<%
  try{
    connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
    statement=connection.createStatement();
    String sql ="select * from customer where id="+id;
    resultSet = statement.executeQuery(sql);
    while(resultSet.next()){
%>
<div class="topnav">
  <div id="header">
    <center>CD Services</center>
  </div>

</div>

<br>
<br>

<h1>Update Profile Data</h1>
<form method="post" action="Customer-update.jsp">
  <div class="container">

  <input type="hidden" name="id" value="<%=resultSet.getString("id") %>">
  <br>
   Describe Yourself<br>
  <textarea rows="8" cols="50" type="text" pattern="^[a-zA-Z ]*$"   name="firstname" ><%=resultSet.getString("firstname") %> </textarea>
  <br>
  Preferences<br>
  <textarea rows="8" cols="50" pattern="[a-zA-Z ]*$" name="lastname"/><%=resultSet.getString("lastname") %> </textarea>
  <br>
  Phone #<br>
  <input type="text" pattern="^[0-9]*$" name="phone" value="<%=resultSet.getString("phone") %>">
  <br>
  Cnic<br>
  <input type="text" pattern="^[0-9]*$" name="cnic" value="<%=resultSet.getString("cnic") %>">

  <br>
  Address<br>
  <input type="text" name="address" value="<%=resultSet.getString("address") %>">
  <br>
  <br>
  <input   type="submit" value="Update Profile">
    </div>
</form>
<%
    }
    connection.close();
  } catch (Exception e) {
    e.printStackTrace();
  }
%>
</body>
</html>