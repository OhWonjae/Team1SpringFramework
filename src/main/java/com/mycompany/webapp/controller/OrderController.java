package com.mycompany.webapp.controller;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mycompany.webapp.dto.Orders;
import com.mycompany.webapp.service.OrdersService;



@Controller
@RequestMapping("/order")
public class OrderController {
	
	@Autowired
	OrdersService ordersService;
	
	// pay.jsp에서 결제정보 입력 후 결제하기 버튼 클릭시
	@PostMapping("/do_payment")
	public String putcart(Orders orders) {
		
		System.out.println("받는사람 이름 : " + orders.getOname());
		System.out.println("받는사람 번호 : " + orders.getOphone());
		System.out.println("주소 : " + orders.getAddress());
		System.out.println("주소상세 : " + orders.getAddetail());
		System.out.println("요청사항 : " + orders.getOrequest());
		System.out.println("결제방법 : " + orders.getPayment());
		System.out.println(orders.getTprice());
		System.out.println(orders.getZip());
		System.out.println(orders.getUno());
		System.out.println(orders.getOno());
		System.out.println(orders.getOdate());
		orders.setOdate(new Date());
		orders.setTprice(1000000);
		
		ordersService.createOrders(orders);
		
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
	
	@GetMapping("/orders")
	public String orders(int ono,Model model) {
		int delivery =3000;
		Orders orders=ordersService.ReadOrders(ono);
		int sum = delivery + orders.getTprice();
		orders.setOprice(sum);
		model.addAttribute("orders", orders);
		return "/order/orders";
	}
	
	
	// 바로구매 버튼 클릭
	@GetMapping("/pay")
	public String pay() {
			
		//해당 상품정보 가지고 결재상세 페이지로 이동
		//get메서드 파라미터를 통해 해당 상품의 정보 가져옴
		return "/order/pay";
	}
	
}
