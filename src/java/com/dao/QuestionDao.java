package com.dao;

import com.connection.HBConnection;
import com.model.Question;
import com.model.User;
import java.sql.Timestamp;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;

public class QuestionDao {

   public static boolean postQuestion(User user, Question question) {
      Session s = HBConnection.getSession();
      try {
         Timestamp t = new Timestamp(System.currentTimeMillis());
         question.setDateTime(t);
         question.setUser(user);
         s.saveOrUpdate(question);
         s.beginTransaction().commit();
         return true;
      } catch (Exception e) {
         System.err.println("QuestionDao PostQuestionException : " + e.toString());
      } finally {
         s.close();
      }
      return false;
   }

   public static List<Question> getAllQuestion() {
      Session s = HBConnection.getSession();
      try {
         String sql = "from Question";
         Query q = s.createQuery(sql);
         List<Question> list = q.list();
         
         return list;
      } catch (Exception e) {
         System.err.println("QuestionDao GetAllQuestionException : " + e.toString());
      } finally {
         s.close();
      }
      return null;
   }
}
