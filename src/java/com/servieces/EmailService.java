package com.servieces;

import java.util.Properties;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class EmailService {

   public static boolean sendEmail(String recepient, String otp) {

      try {
         Properties properties = new Properties();

         properties.put("mail.smtp.user", "username");
         properties.put("mail.smtp.host", "smtp.gmail.com");
         properties.put("mail.smtp.port", "25");
         properties.put("mail.debug", "true");
         properties.put("mail.smtp.auth", "true");
         properties.put("mail.smtp.starttls.enable", "true");
         properties.put("mail.smtp.EnableSSL.enable", "true");

         properties.setProperty("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
         properties.setProperty("mail.smtp.socketFactory.fallback", "false");
         properties.setProperty("mail.smtp.port", "465");
         properties.setProperty("mail.smtp.socketFactory.port", "465");

//         properties.put("mail.smtp.auth", "true");
//         properties.put("mail.smtp.starttls.enable", "true");
//         properties.put("mail.smtp.host", "smtp.gmail.com");
//         properties.put("mail.smtp.port", "587");
         Session session = Session.getInstance(properties, new javax.mail.Authenticator() {
            @Override
            protected PasswordAuthentication getPasswordAuthentication() {
               return new PasswordAuthentication(Constants.SENDER_EMAIL, Constants.PASSWORD);
            }
         });

         Message message = new MimeMessage(session);
         message.setFrom(new InternetAddress(Constants.SENDER_EMAIL));
         message.setRecipient(Message.RecipientType.TO, new InternetAddress(recepient));
         message.setSubject("Email Verification");
         message.setText("Please Verify Email Asap. To Avail Further Services...");

         String content = "<h1>Dear User.</h1>";
         content = content + "<p>Your OTP(One Time Password) is - " + otp + "</p>";

         message.setContent(content, "text/html");
         Transport.send(message);
         System.out.println("Email sent successfully...");
         return true;
      } catch (MessagingException e) {
         System.out.println("Mail Exception : " + e.toString());
      }
      return false;
   }
}
