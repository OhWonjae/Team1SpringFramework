package com.mycompany.webapp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/index")
public class Team1Controller_Wonjae {
	@GetMapping("/search")
	public String rank() {
		return "/index/search";
	}
	
	@GetMapping("/payFinish")
	public String rec() {
		return "/index/payFinish";
	}
	

	
	@GetMapping("/detail")
	public String login() {
		return "/index/detail";
	}
	

}
