package com.controller;

import com.dao.UserDao;
import com.model.User;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping(value = "/user/")
public class UserController {

//   For Register
   @RequestMapping(value = "register")
   public String register(User user, HttpSession session, HttpServletResponse response, HttpServletRequest request) throws IOException {
      if (user.getName() != null) {
         if (!user.getName().equals("")) {
            boolean isRegistered = UserDao.register(user);
            if (isRegistered) {
               return "redirect:/web/login";
            }
         } else {
            return "redirect:/web/register";
         }
      }
      return "redirect:/web/login";
   }

//   For Login
   @RequestMapping(value = "login")
   public String login(User user, HttpSession session) {
      System.out.println(user.getEmail());
      if (user.getEmail() != null) {
         if (!user.getEmail().equals("") && !user.getPassword().equals("")) {
            User refUser = UserDao.login(user);
            session.setAttribute("user", refUser);
            if (refUser.isVerified()) {
               if (refUser.getType() == 1) {
                  return "redirect:/admin/dashboard";
               } else if (refUser.getType() == 2) {
                  return "redirect:/faculty/dashboard";
               } else if (refUser.getType() == 3) {
                  return "redirect:/student/dashboard";
               }
            } else {
               return "redirect:/web/emailVerification";
            }
         }
      }
      return "login";
   }

//   For Email Verification With Otp
   @RequestMapping(value = "verify", method = RequestMethod.POST)
   public void verifyUser(HttpSession session, @RequestParam(value = "enteredOtp") String enteredOtp, HttpServletRequest request, HttpServletResponse response) {
      try {
         PrintWriter out = response.getWriter();
         String generatedOtp = (String) session.getAttribute("otp");
         if (enteredOtp.equals(generatedOtp)) {
            User user = (User) session.getAttribute("user");
            User u = UserDao.verify(user);
            if (u.getType() == 1) {
               out.print("Admin");
            } else if (u.getType() == 2) {
               out.print("Faculty");
            } else if (u.getType() == 3) {
               out.print("Student");
            } else {
               out.print("Err");
            }
            session.setAttribute("user", u);
         } else {
            out.print("Err");
         }
      } catch (IOException e) {
         System.out.println("Email Verification Exception : " + e.toString());
      }
   }

   @RequestMapping(value = "logout")
   public String logout(HttpSession session) {
      session.removeAttribute("user");
      session.invalidate();
      return "redirect:/web/login";
   }
}
