package com;

import dao.Login2DAO;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.HashMap;
import java.util.Map;

/**
 * Created by mano on 2/3/2020.
 */
@WebServlet(name = "ResetPassword2Servlet")
public class ResetPassword2Servlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    ProducerRegistrationServlet r = new ProducerRegistrationServlet();
    Login2DAO rdao = new Login2DAO();

    private String host;
    private String port;
    private String user;
    private String pass;
    String Countrow;
    public void init() {
        // reads SMTP server setting from web.xml file
        ServletContext context = getServletContext();
        host = context.getInitParameter("host");
        port = context.getInitParameter("port");
        user = context.getInitParameter("user");
        pass = context.getInitParameter("pass");
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String recipient = request.getParameter("email");

        String subject = "Mahnoor Khan From CD Service ";

        try
        {
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            Connection con= DriverManager.getConnection("jdbc:mysql://node4406-cd-services.lon.wafaicloud.com/login", "root", "piMVjQJqPw");
            Statement st=con.createStatement();
            String email=request.getParameter("email");
            String strQuery = "SELECT password FROM registerproducer where email='"+email+"'";
            ResultSet rs = st.executeQuery(strQuery);
            rs.next();
            Countrow = rs.getString(1);
            if(Countrow.equals("1")){

                System.out.println("Password send to your email id successfully !");
            }
            else{
                System.out.println("Invalid Email Id !");
            }
        }
        catch (Exception e){
            e.printStackTrace();
        }



        StringBuffer content
                = new StringBuffer("<html> CD Services<br>");
        content.append("<h1> Your password </h1>"+"<h1>"+Countrow+"</h1>");
        content.append("<h2>your password will be updated and now you will get login with your  password</h2><br>");
        content.append("<img src=\\\"cid:image2\\\" width=\"15%\" height=\"15%\" /><br>");
        content.append("<h3>--CEO Mahnoor Khan--</h3>");
        content.append("</html>");

        Map<String, String> inlineImages = new HashMap<String, String>();
        inlineImages.put("image2", "D:\\semester 7\\Design Project part-1\\new interface 3\\pages\\login\\images\\bg-01.jpg");

        String resultMessage = "";

        try {
            EmailUtility.sendEmail(host, port, user, pass, recipient, subject, content.toString(), inlineImages);
            resultMessage = "The e-mail was sent successfully";
        } catch (Exception ex) {

            ex.printStackTrace();
            resultMessage = "There were an error: " + ex.getMessage();

        } finally {

            request.setAttribute("Message", resultMessage);



            getServletContext().getRequestDispatcher("/index2.jsp").forward(request, response);

        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
