package com.mycompany.webapp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/order")
public class CartController {

	@GetMapping("/cart")
	public String cart() {
		return "/order/cart";
	}
	@GetMapping("/putcart")
	public String putcart() {
		return "redirect:/product/detail";
	}
}
