package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/student/")
public class StudentController {

   @RequestMapping(value = "dashboard")
   public String dashboard() {
      System.out.println("Dashboard.....!!!!!!!.....");
      return "/student/dashboard";
   }
}
