package com;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 * Created by mano on 3/23/2020.
 */
@WebServlet(name = "StandardServlet")
@MultipartConfig(maxFileSize = 16177215)
public class StandardServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String piece = request.getParameter("piece");
        String fabric = request.getParameter("fabric");
        String material = request.getParameter("material");
        String size = request.getParameter("size");
        String price = request.getParameter("price");
        String description = request.getParameter("description");
        String email = request.getParameter("email");

String p,f,m,s,pr,des,e;

        EscapeUtilis xss= new EscapeUtilis();


        p=xss.escapeHtml(piece);
        f=xss.escapeHtml(fabric);
        m=xss.escapeHtml(material);
        s=xss.escapeHtml(size);
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
            String sql = "INSERT IGNORE INTO standard (piece,fabric,material,size,price,description,email) values (?,?,?,?,?,?,?)";
            PreparedStatement statement = (PreparedStatement) conn.prepareStatement(sql);



            statement.setString(1, p);
            statement.setString(2, f);
            statement.setString(3, m);
            statement.setString(4, s);
            statement.setString(5, pr);
            statement.setString(6, des);
            statement.setString(7, e);

                // fetches input stream of the upload file for the blob column
           // statement.setBlob(9, inputStream);
            //statement.setBlob(10, inputStream2);
            //statement.setBlob(11, inputStream3);


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

            RequestDispatcher dispatcher = request.getRequestDispatcher("/fileupload.jsp");
            dispatcher.forward(request, response);
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
