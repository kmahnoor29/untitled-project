<%--
  Created by IntelliJ IDEA.
  User: mano
  Date: 4/20/2020
  Time: 1:32 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
  String id=request.getParameter("id");
  try
  {
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn= DriverManager.getConnection("jdbc:mysql://node4406-cd-services.lon.wafaicloud.com/login", "root", "piMVjQJqPw");
    Statement st=conn.createStatement();
    int i=st.executeUpdate("DELETE FROM customer WHERE id="+id);
    RequestDispatcher dispatcher = request.getRequestDispatcher("/viewcostumer.jsp");
    dispatcher.forward(request, response);
  }
  catch(Exception e)
  {
    System.out.print(e);
    e.printStackTrace();
  }
%>