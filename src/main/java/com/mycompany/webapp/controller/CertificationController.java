package com.mycompany.webapp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/index")
public class CertificationController {
	
	@GetMapping("/login")
	public String login() {
		return "/index/login";
	}
	
	@PostMapping("/main")
	public String main() {
		 return "redirect:/index/main";
	}
	
	@GetMapping("/signUp")
	public String signUp() {
		return "/index/signUp";
	}
	
	@PostMapping("/login")
	public String PostLogin() {
		return "redirect:/index/login";
	}
	
	@GetMapping("/searchId")
	public String searchId() {
		return "/index/searchId";
	}
	
	@GetMapping("/searchPw")
	public String searchPw() {
		return "/index/searchPw";
	}
	
	@GetMapping("/pwChange")
	public String pwChange() {
		return "/index/pwChange";
	}
	
	@GetMapping("/phoneChange")
	public String phoneChange() {
		return "/index/phoneChange";
	}
	
	@PostMapping("/my")
	public String change() {
		return "redirect:/index/my";
	}
	
	
	
	
	

}
