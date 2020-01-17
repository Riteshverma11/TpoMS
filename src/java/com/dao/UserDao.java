package com.dao;

import com.connection.HBConnection;
import com.model.User;
import java.util.ListIterator;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class UserDao {

//   @Autowired
//   public static Session s = HBConnection.getSession();
   public static User login(User user) {
      Session s = HBConnection.getSession();
      String sql = "from User where email=:e and password=:p";
      Query q = s.createQuery(sql);
      q.setString("e", user.getEmail());
      q.setString("p", user.getPassword());

      ListIterator<User> li = q.list().listIterator();

      if (li.hasNext()) {
         user = li.next();
      }
      s.close();
      return user;
   }

   public static boolean register(User user) {
      Configuration conf = new Configuration().configure();
      SessionFactory sf = conf.buildSessionFactory();
      Session s = sf.openSession();
      s.save(user);
      s.beginTransaction().commit();
      s.close();
      return true;
   }
}
