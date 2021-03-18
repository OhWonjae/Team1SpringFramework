package com.mycompany.webapp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/index")
public class Team1Controller2 {
	@GetMapping("/askList")
	public String askList() {
		return "/index/askList";
	}
	
	@GetMapping("/askWrite")
	public String askWrite() {
		return "/index/askWrite";
	}
	
	@GetMapping("/history")
	public String history() {
		return "/index/history";
	}
}
