package com.mycompany.webapp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;



// 형윤- 주문결제 주문내역 



@Controller
@RequestMapping("/index")
public class OrderController {
	// pay.jsp에서 결제정보 입력 후 결제하기 버튼 클릭시
	@PostMapping("/do_payment")
	public String putcart(
		@RequestParam() String receiver_name,
		@RequestParam() String receiver_hp, 
		@RequestParam() String receiver_delivery_request) {
		// 장바구니 DB에 해당 상품 추가
		// get메서드 파라미터를 통해 해당 상품의 정보 가져옴
		System.out.println(receiver_name + ": 받는 사람 이름");
		System.out.println(receiver_hp + ": 받는 사람 휴대전화");
		System.out.println(receiver_delivery_request + ": 배송시 요청사항");
		return "/index/payFinish";
	}
	@GetMapping("/payFinish")
	public String payFinish() {
		return "/index/payFinish";
	}
	
	@GetMapping("/history")
	public String history() {
		return "/index/history";
	}
	
}
