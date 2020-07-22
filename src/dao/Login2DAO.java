package dao;

import pojo.Producer;
import pojo.ProducerRegistration;

import java.sql.*;

/**
 * Created by mano on 2/3/2020.
 */
public class Login2DAO {
    public ProducerRegistration checkLogin(String email, String password) throws SQLException,
            ClassNotFoundException {
        String dbURL = "jdbc:mysql://node4406-cd-services.lon.wafaicloud.com/login";
        String dbUser = "root";
        String dbPass = "piMVjQJqPw";
        Class.forName("com.mysql.jdbc.Driver");
        Connection connection = DriverManager.getConnection(dbURL, dbUser, dbPass);
        String sql = "SELECT * FROM registerproducer WHERE email = ? and password = ?";
        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setString(1, email);
        statement.setString(2, password);

        ResultSet result = statement.executeQuery();

        ProducerRegistration user = null;

        if (result.next()) {
            user = new ProducerRegistration();
            user.setFirstname(result.getString("firstname"));
            user.setEmail(email);
        }

        connection.close();

        return user;
    }
    public Producer checkCustLogin(String email, String firstname) throws SQLException,
            ClassNotFoundException {
        String dbURL = "jdbc:mysql://node4406-cd-services.lon.wafaicloud.com/login";
        String dbUser = "root";
        String dbPass = "piMVjQJqPw";
        Class.forName("com.mysql.jdbc.Driver");
        Connection connection = DriverManager.getConnection(dbURL, dbUser, dbPass);
        String sql = "SELECT * FROM producer WHERE email = ? and firstname = ?";
        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setString(1, email);
        statement.setString(2, firstname);

        ResultSet result = statement.executeQuery();

        Producer user = null;

        if (result.next()) {
            user = new Producer();
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
}
