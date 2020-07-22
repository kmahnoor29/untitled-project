<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.ResultSet" %>
<%--
  Created by IntelliJ IDEA.
  User: mano
  Date: 5/9/2020
  Time: 7:27 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  String username = session.getAttribute("username").toString(); //Extract Username
  String username2 = session.getAttribute("username2").toString();
try{
  Class.forName("com.mysql.jdbc.Driver").newInstance();
  Connection con= DriverManager.getConnection("jdbc:mysql://node4406-cd-services.lon.wafaicloud.com/login", "root", "piMVjQJqPw");
  Statement st=con.createStatement();

  String strQuery = "DELETE FROM chat WHERE username= '"+username+"' OR username2= '"+username2+"' OR username2= '"+username2+"' OR username= '"+username+"'";

  st.executeUpdate(strQuery);


  RequestDispatcher dispatcher = request.getRequestDispatcher("/chatWindowServlet");
  dispatcher.forward(request, response);
  }
  catch (Exception e){
  e.printStackTrace();
  }



  %>