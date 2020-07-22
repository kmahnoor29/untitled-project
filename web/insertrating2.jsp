<%@ page import="java.sql.*" %>
<%@ page import="dao.CheckCustAndPro" %>
<%@ page import="com.EscapeUtilis" %>
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

//producer email
//customer userEmail

  String Email,UserEmail;

  CheckCustAndPro check = new CheckCustAndPro();


  String name = request.getParameter("name");
  String rate = request.getParameter("rating");
  String email = request.getParameter("email");
  String userEmail = request.getParameter("userEmail");
  String OrderId = request.getParameter("OrderId");


  UserEmail= check.checkCustomer(userEmail);
  Email= check.checkProducer(email);


  if((UserEmail!=null) && (Email!=null)) {

    try {

      DriverManager.registerDriver(new com.mysql.jdbc.Driver());
      conn = DriverManager.getConnection(dbURL, dbUser, dbPass);

      pstmt = conn.prepareStatement("insert into ratee (name,rate,email,userEmail,orderid) " + "values (?,?,?,?,?)");


      pstmt.setString(1, name);
      pstmt.setString(2, rate);
      pstmt.setString(3, email);
      pstmt.setString(4, userEmail);
      pstmt.setString(5, OrderId);


      int count = pstmt.executeUpdate();
      if (count > 0) {
        out.println("insert successfully");
      } else {
        out.println("not successfully");
      }
    } catch (Exception ex) {
      ex.printStackTrace();
    }

    finally {
      try {
        if (rs != null) {
          rs.close();
          rs = null;
        }
        if (pstmt != null) {
          pstmt.close();
          pstmt = null;
        }
        if (conn != null) {
          conn.close();
          conn = null;
        }
      } catch (Exception e) {
        e.printStackTrace();
      }
    }
      RequestDispatcher dispatcher = request.getRequestDispatcher("ThankyouPage2.jsp");
      dispatcher.forward(request, response);


    }

  else
  {
    RequestDispatcher dispatcher = request.getRequestDispatcher("error3.jsp");
    dispatcher.forward(request, response);

  }




%>