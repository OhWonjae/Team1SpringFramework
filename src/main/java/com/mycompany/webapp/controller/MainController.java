package com.mycompany.webapp.controller;

import java.sql.Connection;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/")
public class MainController {
	@Autowired
	DataSource dataSource;
	
	@GetMapping("/main")
	public String main() {
		return "/main";
	}
	
	@PostMapping("/main")
	public String PostMain() {
		return "redirect:/main";
	}
	
	 @RequestMapping("/content")
	   public String content(Model model) {
	      Connection conn=null;
	      String connInfo = null;
	      try {
	         //커넥션 풀에서 커넥션 객체를 대여해 오기
	         conn = dataSource.getConnection();
	         model.addAttribute("connStatus","성공");
	      }catch(Exception e) {
	         e.printStackTrace();
	         model.addAttribute("connStatus","실패");
	      }finally {
	         try {
	            //커넥션 풀로 커넥션 객체를 반납하기
	            conn.close();
	         }catch(Exception e) {
	            
	         }
	      }
	      return "/main";
	   }

}
