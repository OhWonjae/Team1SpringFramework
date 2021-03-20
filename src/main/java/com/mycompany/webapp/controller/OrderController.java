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
		@RequestParam() String receiver_delivery_request,
		@RequestParam() String zip,
		@RequestParam() String addr1,
		@RequestParam() String addr2) {
		
		System.out.println("받는사람 이름 : " + receiver_name);
		System.out.println("받는사람 휴대전화 : " + receiver_hp);
		System.out.println("배송 우편번호 : " + zip);
		System.out.println("배송 주소 : " + addr1);
		System.out.println("배송 상세주소 : " + addr2);
		System.out.println("배송시 요청사항 : " + receiver_delivery_request);
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
