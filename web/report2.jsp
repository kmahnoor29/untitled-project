<%@ page import="java.sql.*" %>
<%@ page import="com.EscapeUtilis" %>
<%@ page import="dao.CheckCustAndPro" %>
<%--
  Created by IntelliJ IDEA.
  User: MAHNOOR
  Date: 7/10/2020
  Time: 4:28 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%

  String dbURL = "jdbc:mysql://node4406-cd-services.lon.wafaicloud.com/login";
  String dbUser = "root";
  String dbPass = "piMVjQJqPw";
  Connection conn = null;
  PreparedStatement pstmt = null;
  ResultSet rs=null;

  CheckCustAndPro pro=new CheckCustAndPro();

  String email = request.getParameter("user");
  String reportEmail = request.getParameter("user2");
  String reportMessage = request.getParameter("reportmessage");
  String dateNtime= request.getParameter("dateNtime");
  EscapeUtilis xss = new EscapeUtilis();


  String e,re,rm,dt;

  e = xss.escapeHtml(email);
  re=xss.escapeHtml(reportEmail);
  rm=xss.escapeHtml(reportMessage);
  dt=xss.escapeHtml(dateNtime);
  re=pro.checkProducer(reportEmail);

    try{

      DriverManager.registerDriver(new com.mysql.jdbc.Driver());
      conn = DriverManager.getConnection(dbURL, dbUser, dbPass);

      pstmt = conn.prepareStatement("insert into report (email,reportEmail,reportMessage,dateNtime) " + "values (?,?,?,?)");



      pstmt.setString(1, e);
      pstmt.setString(2, re);
      pstmt.setString(3, rm);
      pstmt.setString(4, dt);


      int count = pstmt.executeUpdate();
      if(count>0)
      {
        out.println("insert successfully");
      }
      else
      {
        out.println("not successfully");
      }
    }
    catch(Exception ex)
    {
      ex.printStackTrace();
    }
    finally{
      try{
        if(rs!=null){
          rs.close();
          rs= null;
        }
        if(pstmt !=null)
        {
          pstmt.close();
          pstmt=null;
        }
        if(conn!=null)
        {
          conn.close();
          conn=null;
        }
      }
      catch(Exception E)
      {
        E.printStackTrace();
      }

      RequestDispatcher dispatcher = request.getRequestDispatcher("ThankyouPage4.jsp");
      dispatcher.forward(request, response);


    }




%>