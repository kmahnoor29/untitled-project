package dao;

import org.hibernate.Session;
import org.hibernate.Transaction;
import pojo.ProducerRegistration;
import util.HibernateUtil;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 * Created by mano on 2/3/2020.
 */
public class ProducerRegistrationDAO {
    Session session = HibernateUtil.getSessionFactory().openSession();
    Transaction transaction = session.beginTransaction();
    public void SaveCustomerRegister(ProducerRegistration cust){

        session.persist(cust);
        transaction.commit();
        session.close();

    }

    private final String apikey="1464370de3bd4e3fa98254594903e5e8";

    public void checkEmail(String email) throws Exception {

        String url = "https://apilayer.net/api/check?access_key="+apikey+"&email="+email+"&smtp=1&format=1";

        URL urlobj = new URL(url);

        HttpURLConnection con = (HttpURLConnection) urlobj.openConnection();

        // optional default is GET
        con.setRequestMethod("GET");

        //add request header
        con.setRequestProperty("User-Agent", "Mozilla/17.0");


        BufferedReader in = new BufferedReader(new InputStreamReader(con.getInputStream()));
        String inputLine;
        StringBuffer response = new StringBuffer();

        while ((inputLine = in.readLine()) != null) {
            response.append(inputLine);
        }
        in.close();

        //print result

        String resPonse = response.toString();
        System.out.println(resPonse);

        // create a mysql database connection


        try {
            String dbURL = "jdbc:mysql://node4406-cd-services.lon.wafaicloud.com/login";
            String dbUser = "root";
            String dbPass = "piMVjQJqPw";

            Class.forName("com.mysql.jdbc.Driver");
            Connection connection = DriverManager.getConnection(dbURL, dbUser, dbPass);

            String query = " insert into emailvalidation (email, url)"
                    + " values (?, ?)";

            // create the mysql insert preparedstatement
            PreparedStatement preparedStmt = (PreparedStatement) connection.prepareStatement(query);
            preparedStmt.setString (1, email);
            preparedStmt.setString (2, resPonse);


            // execute the preparedstatement
            preparedStmt.execute();
            connection.close();
        }
        catch (SQLException e1) {
            e1.printStackTrace();
        }


    }



}
