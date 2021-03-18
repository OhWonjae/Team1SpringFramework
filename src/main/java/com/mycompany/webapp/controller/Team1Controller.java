package com.mycompany.webapp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/index")
public class Team1Controller {
	@GetMapping("/main")
	public String main() {
		return "/index/main";
	}
	
	@GetMapping("/cart")
	public String cart() {
		return "/index/cart";
	}
	

	
	@GetMapping("/searchId")
	public String searchId() {
		return "/index/searchId";
	}
	
	@GetMapping("/searchPw")
	public String searchPw() {
		return "/index/searchPw";
	}
	

}
