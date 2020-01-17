package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/faculty/")
public class FacultyController {

   @RequestMapping(value = "dashboard")
   public String dashboard() {
      return "/faculty/dashboard";
   }
}
