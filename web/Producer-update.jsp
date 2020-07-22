<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@ page import="com.EscapeUtilis" %>
<%! String driverName ="com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://node4406-cd-services.lon.wafaicloud.com/login";%>
<%!String user = "root";%>
<%!String psw = "piMVjQJqPw";%>
<%
  String id = request.getParameter("id");
  String firstname=request.getParameter("firstname");
  String lastname=request.getParameter("lastname");
  String phone=request.getParameter("phone");
  String cnic=request.getParameter("cnic");

  String address=request.getParameter("address");


  EscapeUtilis xss = new EscapeUtilis();

  String first,last,ph,cn,add;

  first = xss.escapeHtml(firstname);
  last = xss.escapeHtml(lastname);
  ph = xss.escapeHtml(phone);
  cn = xss.escapeHtml(cnic);
  add = xss.escapeHtml(address);

  if(id != null)
  {
    Connection con = null;
    PreparedStatement ps = null;
    try
    {
      Class.forName(driverName);
      con = DriverManager.getConnection(url,user,psw);
      String sql="Update producer set id=?, firstname=?,lastname=?,phone=?,cnic=?,address=? where id="+id ;
      ps = con.prepareStatement(sql);
      ps.setString(1,id);
      ps.setString(2,first);
      ps.setString(3, last);
      ps.setString(4, ph);
      ps.setString(5, cn);
      ps.setString(6, add);
      int i = ps.executeUpdate();
      if(i > 0)
      {
        RequestDispatcher dispatcher = request.getRequestDispatcher("/producerinfo.jsp");
        dispatcher.forward(request, response);
      }
      else
      {
        out.print("There is a problem in updating Record.");
      }
    }
    catch(SQLException sql)
    {
      request.setAttribute("error", sql);
      out.println(sql);
    }



  }
%>