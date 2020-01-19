package com.dao;

import com.connection.HBConnection;
import com.model.User;
import java.util.ListIterator;
import org.hibernate.Query;
import org.hibernate.Session;
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
      Session s = HBConnection.getSession();
      s.save(user);
      s.beginTransaction().commit();
      s.close();
      return true;
   }

   public static User verify(User user) {
      Session s = HBConnection.getSession();
      String sql = "update User set verified = 1 where email=:em";
      Query q = s.createQuery(sql);
      q.setString("em", user.getEmail());

      if (q.executeUpdate() > 0) {
         s.beginTransaction().commit();
      }

      sql = "from User where email=:email";
      Query qu = s.createQuery(sql);
      qu.setString("email", user.getEmail());
      User u = (User) qu.uniqueResult();
      return u;
   }
}
