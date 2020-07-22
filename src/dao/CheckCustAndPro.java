package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 * Created by MAHNOOR on 7/21/2020.
 */
public class CheckCustAndPro {
    String Countrow;
    public String checkCustomer(String email){

        try
        {
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            Connection con= DriverManager.getConnection("jdbc:mysql://node4406-cd-services.lon.wafaicloud.com/login", "root", "piMVjQJqPw");
            Statement st=con.createStatement();

            String strQuery = "SELECT email FROM customer where email='"+email+"'";
            ResultSet rs = st.executeQuery(strQuery);
            rs.next();
            Countrow = rs.getString(1);
            // if(Countrow.equals("1")){

            System.out.println("Customer Email:\n"+email);
            //}
            // else{
            //   System.out.println("Invalid Email Id !");
            //}
        }
        catch (Exception e){
            e.printStackTrace();
        }

        return email;
    }



    public String checkProducer(String email){

        try
        {
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            Connection con= DriverManager.getConnection("jdbc:mysql://node4406-cd-services.lon.wafaicloud.com/login", "root", "piMVjQJqPw");
            Statement st=con.createStatement();

            String strQuery = "SELECT email FROM producer where email='"+email+"'";
            ResultSet rs = st.executeQuery(strQuery);
            rs.next();
            Countrow = rs.getString(1);
            // if(Countrow.equals("1")){

            System.out.println("Producer Email:\n"+email);
            //}
            // else{
            //   System.out.println("Invalid Email Id !");
            //}
        }
        catch (Exception e){
            e.printStackTrace();
        }

        return email;
    }




}
