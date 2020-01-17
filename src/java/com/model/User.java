package com.model;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "user")
public class User implements Serializable {

   @Id
   @GeneratedValue(strategy = GenerationType.AUTO)
   private int userId;

   @Column(nullable = false)
   private String name;

   @Column(nullable = false, unique = true)
   private String email;
   
   @Column(nullable = false, unique = true)
   private String mobile;

   @Column(nullable = false)
   private String password;

   @Column(nullable = false)
   private int type = 3;

   @Column(nullable = false, columnDefinition = "BOOLEAN DEFAULT false")
   private boolean verified;

   public User() {
   }

   public User(String name, String email, String mobile, String password, boolean verified) {
      this.name = name;
      this.email = email;
      this.mobile = mobile;
      this.password = password;
      this.verified = verified;
   }

   public int getUserId() {
      return userId;
   }

   public void setUserId(int userId) {
      this.userId = userId;
   }

   public String getName() {
      return name;
   }

   public void setName(String name) {
      this.name = name;
   }

   public String getEmail() {
      return email;
   }

   public void setEmail(String email) {
      this.email = email;
   }

   public String getMobile() {
      return mobile;
   }

   public void setMobile(String mobile) {
      this.mobile = mobile;
   }

   public String getPassword() {
      return password;
   }

   public void setPassword(String password) {
      this.password = password;
   }

   public int getType() {
      return type;
   }

   public void setType(int type) {
      this.type = type;
   }

   public boolean isVerified() {
      return verified;
   }

   public void setVerified(boolean verified) {
      this.verified = verified;
   }

   @Override
   public String toString() {
      return "User{" + "userId=" + userId + ", name=" + name + ", email=" + email + ", mobile=" + mobile + ", password=" + password + ", type=" + type + ", verified=" + verified + '}';
   }
}
