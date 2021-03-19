package com.mycompany.webapp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/index")
public class askController {

	
	@GetMapping("/askList")
	public String askList() {
		return "/index/askList";
	}
	
	@GetMapping("/askWrite")
	public String askWrite() {
		return "/index/askWrite";
	}

	@GetMapping("/insertAskWirte")
	public String insertAskWirte() {
		return "redirect:askList";
	}
	
	@GetMapping("/editAskWirte")
	public String editAskWirte() {
		return "redirect:askList";
	}
}
