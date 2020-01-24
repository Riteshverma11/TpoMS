package com.controller;

import com.dao.QuestionDao;
import com.model.Question;
import com.model.User;
import java.util.List;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/question/")
public class QuestionController {

   @RequestMapping(value = "postQuestion")
   public String postQuestion(ModelMap map, Question question, HttpSession session) {
      if (!question.getQuestion().equals("")) {
         User user = (User) session.getAttribute("user");
         List<Question> list = QuestionDao.getAllQuestion();
         map.put("questions", question);
         if (QuestionDao.postQuestion(user, question)) {
            return "redirect:/student/dashboard";
         }
      }
      return "redirect:/student/dashboard";
   }
}
