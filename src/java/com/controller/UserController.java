package com.controller;

import com.dao.UserDao;
import com.model.User;
import java.io.IOException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.stereotype.Controller;

@Controller
@RequestMapping(value = "/user/")
public class UserController {

//   For Register
   @RequestMapping(value = "register")
   public String login(User user, HttpSession session, HttpServletResponse response, HttpServletRequest request) throws IOException {
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
   public String profile(User user, HttpSession session) {
      System.out.println(user.getEmail());
      if (user.getEmail() != null) {
         System.out.println("Hello");

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

   @RequestMapping(value = "logout")
   public String logout(HttpSession session) {
      session.removeAttribute("user");
      session.invalidate();
      return "redirect:/web/login";
   }
}
