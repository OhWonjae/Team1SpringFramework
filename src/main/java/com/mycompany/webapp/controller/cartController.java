package com.mycompany.webapp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/order")
public class cartController {

	
	
	@GetMapping("/cart")
	public String cart() {
		return "/order/cart";
	}
	
	// 장바구니 담기 버튼 클릭
	@GetMapping("/putcart")
	public String putcart(@RequestParam()String price,
			 Model model) {
			
		//장바구니 DB에 해당 상품 추가
		//get메서드 파라미터를 통해 해당 상품의 정보 가져옴
		System.out.println(price + "장바구니 데이터 확인");
		return "redirect:detail";
	}
	
}
