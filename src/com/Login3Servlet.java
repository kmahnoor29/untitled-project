package com;

import dao.LoginDAO;
import pojo.CustomerRegistration;
import pojo.Register;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;

/**
 * Created by mano on 2/3/2020.
 */
@WebServlet(name = "Login3Servlet")
public class Login3Servlet extends HttpServlet {
    private static final long serialVersionUID = 1L;


    public Login3Servlet() {
        super();
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String email = request.getParameter("email");
        String password = request.getParameter("password");

        // get reCAPTCHA request param
        String gRecaptchaResponse = request.getParameter("g-recaptcha-response");
        System.out.println(gRecaptchaResponse);
        boolean verify = VerifyRecaptcha.verify(gRecaptchaResponse);
        // get servlet config init params
        // logging example

        LoginDAO userDao = new LoginDAO();

        try {
            Register user = userDao.checkLoginR(email, password);
            String destPage = "adminlogin.jsp";

            System.out.println("User=" + email + "::password=" + password /*+ "::Captcha Verify"+verify*/);
            if (user != null /*&& verify*/) {
                HttpSession session = request.getSession(true);
                session.setAttribute("user", user);
                session.setAttribute("email",email);
                session.setMaxInactiveInterval(10*60);
                destPage = "admindashboard.jsp";
            } else {
                String message = "Invalid email/password";
                request.setAttribute("message", message);

                destPage = "error2.jsp";
            }

            RequestDispatcher dispatcher = request.getRequestDispatcher(destPage);
            dispatcher.forward(request, response);
            request.getSession(false);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
