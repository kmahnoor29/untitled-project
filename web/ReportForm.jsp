<%@ page import="java.util.Date" %>
<%@ page import="java.util.Calendar" %>
<%@ page import="java.text.DateFormat" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%--
  Created by IntelliJ IDEA.
  User: mano
  Date: 5/5/2020
  Time: 10:25 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>CD CHAT</title>
  <style>
    h2,p{
      font-size:100%;
      font-weight:normal;
    }
    ul,li{
      list-style:none;
    }
    ul{
      overflow:hidden;
      padding:3em;
    }
    ul li a{
      text-decoration:none;
      color:#000;
      background:#fdff95;
      display:block;
      height:25em;
      width:22.5em;
      padding:2em;
    }
    ul li{
      margin:1em;
      float:left;
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
    td{
      font-family: Franklin Gothic Medium, Arial Narrow, Arial, sans-serif;
      font-size: 13px;
    }


    input[type=submit] {
      width: 50%;
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
    }
  </style>
</head>
<body style="color:black;">
<center>
  <div class="topnav">
    <div id="header">
      <center>CD Services</center>
    </div>

  </div>

  <br>
  <br>


  <br><br>
  <h2><strong>Report User</strong>
    <br>
    <%
      Date date = Calendar.getInstance().getTime();
      DateFormat dateFormat = new SimpleDateFormat("yyyy-MMMM-dd hh:mm:ss");
      String strDate = dateFormat.format(date);


      if(session.getAttribute("email")!=null){
        String email1 = (String) session.getAttribute("email");

        out.print(email1);
      }
    %>
  </h2>
  <form name="userLogin" action="report.jsp" method="POST">
    <div class="container">
    <table border="0" width="50" cellspacing="8" cellpadding="20">

      <tbody>
      <tr>
        <td>Your Email:</td>
        <td><input type="email" name="user" value="<%
        String email = (String) session.getAttribute("email");
        out.print(email); %>" placeholder="Your Email Address?" readonly data-validator="Enter Your Email" required="true"/></td>

        <td>Email to Report:</td>
        <td><input type="email" name="user2"  placeholder="Email User Email " data-validator="Which user to report?" required="true" /></td>

        <td>Report Date & Time:</td>
        <td><input type="text" name="dateNtime" readonly value="<% out.print(strDate); %>"  placeholder="Email User Email " data-validator="Which user to report?" required="true" /></td>


        <td>Report Details:</td>
        <td><textarea rows="8" cols="44"  type="text" pattern="^[a-zA-Z ]*$" name="reportmessage" required="true">Enter text here...</textarea></td>

      </tr>

      </tbody>
    </table>
    <input style="color: white; background-color: #008B8B; font-family: Franklin Gothic Medium, Arial Narrow, Arial, sans-serif; " type="submit" value="Report This User" name="log in" />

</div>

  </form>
  <ul>
    <li>
      <a href="#">
        <h1>-Term & Conditions-</h1>
        <p><strong>Before Report into the System Must Read</strong><ol>
        <li>1. CD Service will not be held responsible for any inconvenience with user.</li>
        <li>2. CD Service will not be held responsible for any fraud.</li>
        <li>4. Abusive language will not be acceptable.</li>
        <li>5. Miss use of Report Functionality may lead to your account deletion. </li>
        <li>6. The account will be deleted after complete review of the data.</li>
      </ol></p>
      </a>
    </li>
  </ul>

</center>
</body>

</html>
