package com.mycompany.webapp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/user")
public class CertificationController {
	
	@GetMapping("/login")
	public String login() {
		return "/user/login";
	}
	
	
	
	@GetMapping("/signUp")
	public String signUp() {
		return "/user/signUp";
	}
	
	@PostMapping("/login")
	public String PostLogin() {
		return "redirect:/user/login";
	}
	
	@GetMapping("/searchId")
	public String searchId() {
		return "/user/searchId";
	}
	
	@GetMapping("/searchPw")
	public String searchPw() {
		return "/user/searchPw";
	}
	
	@GetMapping("/pwChange")
	public String pwChange() {
		return "/user/pwChange";
	}
	
	@GetMapping("/phoneChange")
	public String phoneChange() {
		return "/user/phoneChange";
	}
	
	@PostMapping("/my")
	public String change() {
		return "redirect:/user/my";
	}
	
	
	@GetMapping("/my")
	 public String my() {
		return "/user/my";
	 }
	
	
	
	
	

}
