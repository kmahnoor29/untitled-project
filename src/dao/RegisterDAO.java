package dao;

import org.hibernate.Session;
import org.hibernate.Transaction;
import pojo.Register;
import util.HibernateUtil;

/**
 * Created by mano on 1/27/2020.
 */
public class RegisterDAO {


    public void saveRegister(Register employee) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        session.persist(employee);
        transaction.commit();
        session.close();
    }



}
