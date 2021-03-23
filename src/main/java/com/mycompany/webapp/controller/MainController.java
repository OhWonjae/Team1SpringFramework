package com.mycompany.webapp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/")
public class MainController {
	
	@GetMapping("/main")
	public String main() {
		return "/main";
	}
	
	@PostMapping("/main")
	public String PostMain() {
		return "redirect:/main";
	}

}
