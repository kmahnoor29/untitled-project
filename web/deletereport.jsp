<%--
  Created by IntelliJ IDEA.
  User: mano
  Date: 4/21/2020
  Time: 11:24 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="java.sql.*,java.util.*"%>
<%
  String id=request.getParameter("id");
  try
  {
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn= DriverManager.getConnection("jdbc:mysql://node4406-cd-services.lon.wafaicloud.com/login", "root", "piMVjQJqPw");
    Statement st=conn.createStatement();
    int i=st.executeUpdate("DELETE FROM report WHERE id="+id);
    RequestDispatcher dispatcher = request.getRequestDispatcher("/AdminReport.jsp");
    dispatcher.forward(request, response);
  }
  catch(Exception e)
  {
    System.out.print(e);
    e.printStackTrace();
  }
%>