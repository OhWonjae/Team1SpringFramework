package com.mycompany.webapp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

// 형윤- 로그인, 결재창, 회원가입
// 형윤- 로그인, 결재창, 회원가입
// 형윤- 로그인, 결재창, 회원가입


@Controller
@RequestMapping("/index")
public class Team1Controller_hyungyoon {
	@GetMapping("/rank")
	public String rank() {
		return "/index/rank";
	}
	
	@GetMapping("/rec")
	public String rec() {
		return "/index/rec";
	}
	
	@GetMapping("/login")
	public String login() {
		return "/index/login";
	}
	
	@GetMapping("/signUp")
	public String signUp() {
		return "/index/signUp";
	}
}
