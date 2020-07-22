package dao;


import pojo.Customer;
import pojo.CustomerRegistration;
import pojo.Register;


import java.sql.*;

/**
 * Created by mano on 1/27/2020.
 */
public class LoginDAO {


    public CustomerRegistration checkLogin(String email, String password) throws SQLException,
            ClassNotFoundException {
        String dbURL = "jdbc:mysql://node4406-cd-services.lon.wafaicloud.com/login";
        String dbUser = "root";
        String dbPass = "piMVjQJqPw";

        Class.forName("com.mysql.jdbc.Driver");
        Connection connection = DriverManager.getConnection(dbURL, dbUser, dbPass);
        String sql = "SELECT * FROM registercustomer WHERE email = ? and password = ?";
        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setString(1, email);
        statement.setString(2, password);

        ResultSet result = statement.executeQuery();

        CustomerRegistration user = null;

        if (result.next()) {
            user = new CustomerRegistration();
            user.setFirstname(result.getString("firstname"));
            user.setEmail(email);
        }

        connection.close();

        return user;
    }


    public Customer checkCustLogin(String email, String firstname) throws SQLException,
            ClassNotFoundException {
        String dbURL = "jdbc:mysql://node4406-cd-services.lon.wafaicloud.com/login";
        String dbUser = "root";
        String dbPass = "piMVjQJqPw";

        Class.forName("com.mysql.jdbc.Driver");
        Connection connection = DriverManager.getConnection(dbURL, dbUser, dbPass);
        String sql = "SELECT * FROM customer WHERE email = ? and firstname = ?";
        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setString(1, email);
        statement.setString(2, firstname);

        ResultSet result = statement.executeQuery();

        Customer user = null;

        if (result.next()) {
            user = new Customer();
            user.setFirstname(firstname);
            user.setFirstname(result.getString("lastname"));
            user.setFirstname(result.getString("cnic"));
            user.setFirstname(result.getString("phone"));
            user.setFirstname(result.getString("address"));
            user.setEmail(email);
        }

        connection.close();

        return user;
    }


    public Register checkLoginR(String email, String password) throws SQLException,
            ClassNotFoundException {
        String dbURL = "jdbc:mysql://node4406-cd-services.lon.wafaicloud.com/login";
        String dbUser = "root";
        String dbPass = "piMVjQJqPw";

        Class.forName("com.mysql.jdbc.Driver");
        Connection connection = DriverManager.getConnection(dbURL, dbUser, dbPass);
        String sql = "SELECT * FROM register WHERE email = ? and password = ?";
        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setString(1, email);
        statement.setString(2, password);

        ResultSet result = statement.executeQuery();

        Register user = null;

        if (result.next()) {
            user = new Register();
            user.setFirstname(result.getString("firstname"));
            user.setEmail(email);
        }

        connection.close();

        return user;
    }
    public static void main(String[] args) {
        System.out.println("My App!");
    }
}
