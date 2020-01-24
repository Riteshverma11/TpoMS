package com.controller;

import com.dao.QuestionDao;
import com.model.Question;
import java.util.ArrayList;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/student/")
public class StudentController {

   @RequestMapping(value = "dashboard")
   public String dashboard(ModelMap map) {
      System.out.println("Dashboard.....!!!!!!!.....");

      ArrayList<Question> list = (ArrayList<Question>) QuestionDao.getAllQuestion();
      
      map.put("questions", list);
      return "/student/dashboard";
   }
}
