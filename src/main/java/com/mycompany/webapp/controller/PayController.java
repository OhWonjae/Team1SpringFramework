package com.mycompany.webapp.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.mycompany.webapp.dto.OrderProduct;



@Controller
@RequestMapping("/order")
public class PayController {
	
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
		return "/order/payFinish";
	}
	
	@GetMapping("/do_payment")
	public String Postputcart() {
		return "redirect:/order/payFinish";
	}
	

	@GetMapping("/payFinish")
	public String payFinish() {
		return "/order/payFinish";
	}
	
	
	@GetMapping("/history")
	public String history() {
		return "/order/history";
	}
	
	
	// 바로구매 버튼 클릭
	@GetMapping("/pay")
	public String pay() {
			
		//해당 상품정보 가지고 결재상세 페이지로 이동
		//get메서드 파라미터를 통해 해당 상품의 정보 가져옴
		return "/order/pay";
	}
	
}
