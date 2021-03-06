package com;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.*;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.*;

/**
 * Created by mano on 5/5/2020.
 */
@WebServlet(name = "chatWindowServlet")
public class chatWindowServlet extends HttpServlet {

    String username,tempName,username2,dateNtime;
    String Countrow;


    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException
    {




        response.setContentType("text/html;charset=UTF-8");


        try
        {



            PrintWriter out = response.getWriter();
            String message = request.getParameter("txtMsg"); //Extract Message
            //Extract Image
            InputStream inputStream = null;



            String username = session.getAttribute("username").toString(); //Extract Username
            String username2 = session.getAttribute("username2").toString(); //Extract Username
            dateNtime  = session.getAttribute("dateNtime").toString(); //Extract Username

            //Display Chat Room
            out.println("<html>  <head><style> .topnav {\n" +
                    "      background-color: #008B8B;\n" +
                    "      overflow: hidden;\n" +
                    "    }\n" +
                    "\n" +
                    "    /* Style the links inside the navigation bar */\n" +
                    "    .topnav a {\n" +
                    "      float: left;\n" +
                    "      color: #f2f2f2;\n" +
                    "      text-align: center;\n" +
                    "      padding: 14px 16px;\n" +
                    "      text-decoration: none;\n" +
                    "      font-size: 17px;\n" +
                    "    }\n" +
                    "\n" +
                    "    /* Change the color of links on hover */\n" +
                    "    .topnav a:hover {\n" +
                    "      background-color: #ddd;\n" +
                    "      color: black;\n" +
                    "    }\n" +
                    "\n" +
                    "    /* Add a color to the active/current link */\n" +
                    "    .topnav a.active {\n" +
                    "      background-color: #4CAF50;\n" +
                    "      color: white;\n" +
                    "    }\n" +
                    "\n" +
                    "    #header{\n" +
                    "      font-family: Franklin Gothic Medium, Arial Narrow, Arial, sans-serif;\n" +
                    "      color: white;\n" +
                    "      font-size: 70px;\n" +
                    "    }</style> <body> <meta http-equiv=\"Content-Type\" content=\"text/html/; charset=UTF-8\"> <title>Chat Room</title>  </head>");
            out.println("<meta http-equiv=\"Content-Type\" content=\"text/html/; charset=UTF-8\"> <center>");
            out.println("  <div class=\"topnav\">\n" +
                "    <div id=\"header\">\n" +
                "      <center>CD Services</center>\n" +
                "    </div>\n" +
                "\n" +
                "  </div>\n" +
                "\n" +
                "  <br>\n" +
                "  <br>");
            out.println("<h2>Hi ");
            out.println(username);
            out.println("<br> Welcome to CD Service Chat ");
            out.println("</h2><br><hr>");
            out.println("  <body>");
            out.println("      <form  name=\"chatWindow\" action=\"chatWindowServlet\"> ");
            out.println("<h2>Message:</h2> <input type=\"text\"  pattern=\"[a-zA-Z ]*$\" required=\"true\" name=\"txtMsg\" value=\"\" />" +
                            "<a style=\"color:white; background-color:red;\" href=\"userChatDelete.jsp?'"+username+"' & '"+username2+"'>" +
                            "<button type=\"button\" class=\"delete\">Delete</button>" +
                            "</a>"+
                    "<input type=\"submit\" value=\"Send\" name=\"cmdSend\"/>");
            out.println("<br><br> <a href=\"chatWindowServlet\">Refresh Chat Room</a>");
            out.println("<br> <a href=\"LogoutServlet\">Logout</a>");
            out.println("<br>  <br>");
            out.println("Messages in Chat Box:");
            out.println("<br><br>");
            out.println("<textarea  readonly=\"readonly\" id=\"output\"  name=\"txtMessage\" rows=\"20\" cols=\"60\" /> "
            );



            //If eneterd message != null then insert into database



         String user =    checkUser1(username);

     String user2 =  checkUser2(username2);

            if(request.getParameter("txtMsg")!=null && user.equals(username) && user2.equals(username2) )
            {

                try
                {
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con= DriverManager.getConnection("jdbc:mysql://node4406-cd-services.lon.wafaicloud.com/login", "root", "piMVjQJqPw");

                    PreparedStatement pstmt = null;


                    pstmt = con.prepareStatement("insert into chat (username,username2,message,dateNtime) " + "values (?,?,?,?)");

                    pstmt.setString(1, username);
                    pstmt.setString(2, username2);
                    pstmt.setString(3, message);
                    pstmt.setString(4, dateNtime);
                    int count = pstmt.executeUpdate();
                    if(count>0)
                    {
                        out.println("sent");
                    }
                    else
                    {
                        out.println("not sent");
                    }




                }
                catch(ClassNotFoundException   ex1)
                {
                    System.err.println(ex1.getMessage());
                    String messages = "No";
                    out.println(messages);
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
            // Retrieve all messages from database

            try
            {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con= DriverManager.getConnection("jdbc:mysql://node4406-cd-services.lon.wafaicloud.com/login", "root", "piMVjQJqPw");

                Statement st=con.createStatement();

                ResultSet rs=st.executeQuery("select *from chat where username='"+username2+"' AND username2='"+username+"' OR username='" + username + "' AND username2='" + username2 + "'");

                // Print all retrieved messages
                while(rs.next())
                {
                    String messages = rs.getString(2) + " >> " + rs.getString(4)+ "\nMessage Sent:" + rs.getString(5);

                    out.println(messages);
                }

                con.close();
            }
            catch(Exception ex1)
            {
                System.err.println(ex1.getMessage());
            }





            out.println("</textarea>");
            out.println("<hr>");
            out.println("</form>");
            out.println("</body>");
            out.println("</html>");
        }catch (Exception ex){
            System.err.println(ex.getMessage());
        }


    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException
    {
        //Session

        session = request.getSession();

        if(username!=null)
        {
            tempName=username;
        }

        processRequest(request, response);

    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);




    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
    HttpSession session;


    public String checkUser1(String username){

        try
        {
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            Connection con= DriverManager.getConnection("jdbc:mysql://node4406-cd-services.lon.wafaicloud.com/login", "root", "piMVjQJqPw");
            Statement st=con.createStatement();

            String strQuery = "SELECT email FROM customer where email='"+username+"'";
            ResultSet rs = st.executeQuery(strQuery);
            rs.next();
            Countrow = rs.getString(1);
           // if(Countrow.equals("1")){

            System.out.println("Customer Email:\n"+username);
            //}
           // else{
             //   System.out.println("Invalid Email Id !");
            //}
        }
        catch (Exception e){
            e.printStackTrace();
        }

return username;
    }



    public String checkUser2(String username){

        try
        {
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            Connection con= DriverManager.getConnection("jdbc:mysql://node4406-cd-services.lon.wafaicloud.com/login", "root", "piMVjQJqPw");
            Statement st=con.createStatement();

            String strQuery = "SELECT email FROM producer where email='"+username+"'";
            ResultSet rs = st.executeQuery(strQuery);
            rs.next();
            Countrow = rs.getString(1);
            // if(Countrow.equals("1")){

            System.out.println("Producer Email:\n"+username);
            //}
            // else{
            //   System.out.println("Invalid Email Id !");
            //}
        }
        catch (Exception e){
            e.printStackTrace();
        }

return username;
    }

public void deleteChat(String username , String username2){


    try
    {
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn= DriverManager.getConnection("jdbc:mysql://node4406-cd-services.lon.wafaicloud.com/login", "root", "piMVjQJqPw");
        Statement st=conn.createStatement();
        st.executeUpdate("DELETE FROM chat WHERE username='"+username+"' AND username2='"+username2+"' OR username2='"+username2+"' AND username='"+username+"'");
    }
    catch(Exception e)
    {
        System.out.print(e);
        e.printStackTrace();
    }

}



}
