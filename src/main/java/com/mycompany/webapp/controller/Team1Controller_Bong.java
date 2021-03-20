package com.mycompany.webapp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/index")
public class Team1Controller_Bong {
	@GetMapping("/new")
	public String newMethod() {
		return "/index/new";
	}
	@GetMapping("/phoneChange")
	public String phoneChange() {
		return "/index/phoneChange";
	}
	@GetMapping("/pwChange")
	public String pwChange() {
		return "/index/pwChange";
	}
	@GetMapping("/my")
	public String my() {
		return "/index/my";
	}
	@GetMapping("/rec")
	   public String rec() {
	      return "/index/rec";
	   }

}
