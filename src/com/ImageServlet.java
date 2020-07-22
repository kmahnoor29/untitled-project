package com;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 * Created by mano on 3/20/2020.
 */
@WebServlet(name = "ImageServlet")
@MultipartConfig(maxFileSize = 418018841)
public class ImageServlet extends HttpServlet {
    EscapeUtilis escapeUtilis = new EscapeUtilis();
    String fn,ln,ph,cn,ad;
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {



        String firstname = request.getParameter("firstname");
        String lastname = request.getParameter("lastname");
        String phone = request.getParameter("phone");
        String cnic = request.getParameter("cnic");
        String email = request.getParameter("email");
        String address = request.getParameter("address");

        fn = escapeUtilis.escapeHtml(firstname);
        ln = escapeUtilis.escapeHtml(lastname);
        ph = escapeUtilis.escapeHtml(phone);
        cn = escapeUtilis.escapeHtml(cnic);
        ad = escapeUtilis.escapeHtml(address);

        String dbURL = "jdbc:mysql://node4406-cd-services.lon.wafaicloud.com/login";
        String dbUser = "root";
        String dbPass = "piMVjQJqPw";



        InputStream inputStream = null;
        Part filePart = request.getPart("image");
        if (filePart != null) {
            // prints out some information for debugging
            System.out.println(filePart.getName());
            System.out.println(filePart.getSize());
            System.out.println(filePart.getContentType());

            // obtains input stream of the upload file
            inputStream = filePart.getInputStream();
        }




        Connection conn = null; // connection to the database
        String message = null;  // message will be sent back to client
        try {
            // connects to the database
            DriverManager.registerDriver(new com.mysql.jdbc.Driver());
            conn = DriverManager.getConnection(dbURL, dbUser, dbPass);

            // constructs SQL statement
            String sql = "INSERT IGNORE INTO producer (image,firstname,lastname,phone,cnic,email,address) values (?,?,?,?,?,?,?)";
            PreparedStatement statement = (PreparedStatement) conn.prepareStatement(sql);



            if (inputStream != null) {
                // fetches input stream of the upload file for the blob column
                statement.setBlob(1, inputStream);
            }

            statement.setString(2, fn);
            statement.setString(3, ln);
            statement.setString(4, ph);
            statement.setString(5, cn);
            statement.setString(6, email);
            statement.setString(7, ad);


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


                // forwards to the message page



            }


            RequestDispatcher dispatcher = request.getRequestDispatcher("/producerinfo.jsp");
            dispatcher.forward(request, response);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
