package com.mycompany.webapp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/home")
public class DetailController {

	//제품 상세페이지 이동
	@GetMapping("/detail")
	public String login() {
		return "/index/detail";
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
	
	// 바로구매 버튼 클릭
	@GetMapping("/buy")
	public String buy(@RequestParam()String price,
			 Model model) {
		
		//해당 상품정보 가지고 결재상세 페이지로 이동
		//get메서드 파라미터를 통해 해당 상품의 정보 가져옴
		System.out.println(price + "구매 데이터 확인");
		return "/index/pay";
	}
}
