package com.model;

import com.connection.HBConnection;
import java.io.Serializable;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import org.hibernate.Session;

@Entity
@Table(name = "question")
public class Question implements Serializable {

   @Id
   @GeneratedValue(strategy = GenerationType.AUTO)
   private int questionId;

   @Column(nullable = false)
   private String question;

   @Column(nullable = false)
   private Timestamp dateTime;

   @ManyToOne
   @JoinColumn(nullable = false, name = "userId")
   private User user;

   public Question() {
   }

   public Question(String question, Timestamp dateTime, User user) {
      this.question = question;
      this.dateTime = dateTime;
      this.user = user;
   }

   public int getQuestionId() {
      return questionId;
   }

   public void setQuestionId(int questionId) {
      this.questionId = questionId;
   }

   public String getQuestion() {
      return question;
   }

   public void setQuestion(String question) {
      this.question = question;
   }

   public Timestamp getDateTime() {
      return dateTime;
   }

   public void setDateTime(Timestamp dateTime) {
      this.dateTime = dateTime;
   }

   public User getUser() {
      return user;
   }

   public void setUser(User user) {
      this.user = user;
   }

   @Override
   public String toString() {
      return "Question{" + "questionId=" + questionId + ", question=" + question + ", dateTime=" + dateTime + ", user=" + user + '}';
   }

//   public static void main(String[] args) {
//      Timestamp t = new Timestamp(System.currentTimeMillis());
//      System.out.println(t);
//      Session s = HBConnection.getSession();
//
//      User user = new User("Kaalu", "k@gmail.com", "843984783", "123", true);
//      Question q = new Question("What is Java", t, user);
//      List<Question> al = new ArrayList<>();
//      al.add(q);
//      user.setQuestion(al);
//      
//      s.save(user);
//      s.save(q);
//
//      s.beginTransaction().commit();
//
//      s.close();
//   }
}
