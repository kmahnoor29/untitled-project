<%@ page import="java.io.File" %>
<%--
  Created by IntelliJ IDEA.
  User: MAHNOOR
  Date: 7/8/2020
  Time: 1:39 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Images</title>
  <link rel="stylesheet" href="style.css">

  <!-- ------------ Font awesome CDN link ------------------ -->


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
<div class="topnav">
  <div id="header">
    <center>CD Services</center>
  </div>

</div>
<br>
<br>
<br>
<h2>Customer Images</h2>


<%

  File folder;
  String Path;

  String path=request.getServletContext().getRealPath("uploadedFiles\\");
  folder = new File(path);
  File[] listOfFiles = folder.listFiles();
  for (int i = 0; i < listOfFiles.length; i++)
  {
  if (listOfFiles[i].isFile()) {
    String abc = "uploadedFiles\\";
    //	Path = abc + listOfFiles[i].getName();

    //	File file = new File(Path);
    //   out.print("<img src='"+abc.concat("'\'+)+"' width='242' height='242' />");

    out.print("<img src= '"+abc+listOfFiles[i].getName()+"' width='282' height='282' />");


  }
  }
%>





</body>
</html>