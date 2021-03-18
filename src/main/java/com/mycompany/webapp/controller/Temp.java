package com.mycompany.webapp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Temp {
	@RequestMapping("/")
	public String Test() {
		System.out.println("dsaf");
		return "detail";
	}
}
