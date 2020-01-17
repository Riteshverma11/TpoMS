package com.connection;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class HBConnection {

   public static Session getSession() {
      Configuration conf = new Configuration().configure();
      SessionFactory sf = conf.buildSessionFactory();
      Session s = sf.openSession();
      return s;
   }
}
