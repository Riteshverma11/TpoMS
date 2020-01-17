package com.controller;

import org.springframework.web.bind.annotation.RequestMapping;

@org.springframework.stereotype.Controller
@RequestMapping(value = "/web/")
public class DefaultController {

   @RequestMapping(value = "home")
   public String home() {
      return "home";
   }
   
   @RequestMapping(value = "about")
   public String about() {
      return "about";
   }
   
   @RequestMapping(value = "contact")
   public String contact() {
      return "contact";
   }

   @RequestMapping(value = "login")
   public String login() {
      return "login";
   }

   @RequestMapping(value = "register")
   public String register() {
      return "register";
   }
   
   @RequestMapping(value = "emailVerification")
   public String emailVerification() {
      return "emailVerification";
   }
}
