
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="pojo.ProducerRegistration" %>
<%@ page import="dao.ProducerRegistrationDAO" %>
<%@ page import="com.EscapeUtilis" %>
<%--
  Created by IntelliJ IDEA.
  User: mano
  Date: 2/1/2020
  Time: 12:24 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  ProducerRegistration cust = new ProducerRegistration();
  ProducerRegistrationDAO custdao = new ProducerRegistrationDAO();
  String destpage ="index2.jsp";
  String fn,ln,pass,cpass;

  EscapeUtilis xss = new EscapeUtilis();
  String firstname=(String)session.getAttribute("firstname");
  String lastname=(String)session.getAttribute("lastname");
  String email=(String)session.getAttribute("email");
  String password=(String)session.getAttribute("password");
  String confirmpassword=(String)session.getAttribute("confirmpassword");

  String registration=(String)session.getAttribute("registration");
  String gender=(String)session.getAttribute("gender");


  fn=xss.escapeHtml(firstname);
  ln=xss.escapeHtml(lastname);
  pass=xss.escapeHtml(password);
  cpass=xss.escapeHtml(confirmpassword);


  cust.setFirstname(fn);
  cust.setLastname(ln);
  cust.setEmail(email);
  cust.setPassword(pass);
  cust.setConfirmpassword(cpass);

  cust.setRegistration(registration);
  cust.setGender(gender);

  int otp= (Integer) session.getAttribute("otp");
  String otpvalue=request.getParameter("otpvalue");
  int enterOtp=Integer.parseInt(otpvalue);




  // try {
  // Class.forName("com.mysql.jdbc.Driver");
  //String url = "jdbc:mysql://localhost:3306/login";
  //con = DriverManager.getConnection(url, "root", "");
  // st = con.createStatement();
  //ResultSet rs = st.executeQuery("select * from registercustomer where email= '"+ email + "' AND firstname= '"+ firstname + "'");
  //if (rs.next()) {
  //email = rs.getString("email");
  //firstname = rs.getString("firstname");

  //}
  //if ((!firstname.isEmpty()) && (!lastname.isEmpty()) && (!email.isEmpty()) && (!password.isEmpty()) && (!confirmpassword.isEmpty()) && (!registration.isEmpty()) && (!gender.isEmpty()) && (!phone.isEmpty())) {
  //  if (password.equals(confirmpassword) && otp == enterOtp && (email!= email) && (firstname!=firstname)) {
  //  custdao.SaveCustomerRegister(cust);
  //destpage = "index.jsp";

  //}
  //  else {
  //  destpage = "/error.jsp";

//        }

  //    RequestDispatcher dispatcher = request.getRequestDispatcher(destpage);
  //  dispatcher.forward(request, response);

  //}
  //} catch (Exception e) {out.println(e);}




  if((!firstname.isEmpty()) && (!lastname.isEmpty()) && (!email.isEmpty()) && (!password.isEmpty()) && (!confirmpassword.isEmpty()) && (!registration.isEmpty())&& (!gender.isEmpty())){
    if(password.equals(confirmpassword) && otp==enterOtp) {
      try {

        custdao.SaveCustomerRegister(cust);

        destpage = "/index2.jsp";
      }
      catch (Exception ex){

        ex.printStackTrace();

        destpage ="/error.jsp";

      }

    }else {
      destpage="/error.jsp";
    }

    RequestDispatcher dispatcher = request.getRequestDispatcher(destpage);
    dispatcher.forward(request, response);

  }

%>
