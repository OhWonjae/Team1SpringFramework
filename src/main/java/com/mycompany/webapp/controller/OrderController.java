package com.mycompany.webapp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;



// 형윤- 주문결제 주문내역 



@Controller
@RequestMapping("/index")
public class OrderController {
	
	@GetMapping("/payFinish")
	public String payFinish() {
		return "/index/payFinish";
	}
	
	@GetMapping("/history")
	public String history() {
		return "/index/history";
	}
	/*
	 * @GetMapping("/rank") public String rank() { return "/index/rank"; }
	 * 
	 * @GetMapping("/rec") public String rec() { return "/index/rec"; }
	 * 
	 * @GetMapping("/login") public String login() { return "/index/login"; }
	 * 
	 * @GetMapping("/signUp") public String signUp() { return "/index/signUp"; }
	 */
}
