package com;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 * Created by mano on 3/24/2020.
 */
@WebServlet(name = "CustomServlet")
public class CustomServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String piece = request.getParameter("piece");
        String fabric = request.getParameter("fabric");
        String material = request.getParameter("material");
        String chest = request.getParameter("chest");
        String waist = request.getParameter("waist");
        String hip = request.getParameter("hip");
        String shoulders = request.getParameter("shoulders");
        String sleevelength = request.getParameter("sleevelength");
        String price = request.getParameter("price");
        String description = request.getParameter("description");
        String email = request.getParameter("email");
      ;

        String p,f,m,c,w,h,s,sl,pr,des,e;

        EscapeUtilis xss= new EscapeUtilis();

        p=xss.escapeHtml(piece);
        f=xss.escapeHtml(fabric);
        m=xss.escapeHtml(material);
        c=xss.escapeHtml(chest);
        w=xss.escapeHtml(waist);
        h=xss.escapeHtml(hip);
        s=xss.escapeHtml(shoulders);
        sl=xss.escapeHtml(sleevelength);
        pr=xss.escapeHtml(price);
        des=xss.escapeHtml(description);
        e=xss.escapeHtml(email);


        HttpSession session = request.getSession(true);
        session.setAttribute("email",email);



        String dbURL = "jdbc:mysql://node4406-cd-services.lon.wafaicloud.com/login";
        String dbUser = "root";
        String dbPass = "piMVjQJqPw";

        Connection conn = null; // connection to the database
        String message = null;  // message will be sent back to client
        try {
            // connects to the database
            DriverManager.registerDriver(new com.mysql.jdbc.Driver());
            conn = DriverManager.getConnection(dbURL, dbUser, dbPass);

            // constructs SQL statement
            String sql = "INSERT IGNORE INTO custom (piece,fabric,material,chest,waist,hip,shoulders,sleevelength,price,description,email) values (?,?,?,?,?,?,?,?,?,?,?)";
            PreparedStatement statement = (PreparedStatement) conn.prepareStatement(sql);



            statement.setString(1, p);
            statement.setString(2, f);
            statement.setString(3, m);
            statement.setString(4, c);
            statement.setString(5, w);
            statement.setString(6, h);
            statement.setString(7, s);
            statement.setString(8, sl);
            statement.setString(9, pr);
            statement.setString(10,des);
            statement.setString(11,e);



            // sends the statement to the database server
            int row = statement.executeUpdate();
            if (row > 0) {
                message = "File uploaded and saved into database";
            }
        } catch (SQLException ex) {
            message = "ERROR: " + ex.getMessage();
            ex.printStackTrace();
        } finally {
            if (conn != null) {
                // closes the database connection
                try {
                    conn.close();
                } catch (SQLException ex) {
                    ex.printStackTrace();
                }
                session = request.getSession(false);

            }
        }


        RequestDispatcher dispatcher = request.getRequestDispatcher("/fileupload.jsp");
        dispatcher.forward(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
