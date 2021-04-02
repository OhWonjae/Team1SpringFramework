package com.mycompany.webapp.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mycompany.webapp.dto.CartItem;
import com.mycompany.webapp.dto.Orders;
import com.mycompany.webapp.service.OrdersService;



@Controller
@RequestMapping("/order")
public class OrderController {
	
	@Autowired
	OrdersService ordersService;
	
	// pay.jsp에서 결제정보 입력 후 결제하기 버튼 클릭시
	@PostMapping("/do_payment")
	public String putcart(Orders orders, Authentication auth) {	
		orders.setUser_id(auth.getName());
		System.out.println();
		/*int subNum=0;
		for(int i=1; i<=6; i++) {
			subNum += Math.random() * 10;
		}*/
		
		orders.setOrder_id(797979797);
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
		
		Orders orders=ordersService.ReadOrders(ono);
		model.addAttribute("orders", orders);
		return "/order/orders";
	}
	
	

	//카트에서 구매버튼 클릭
	@GetMapping("/pay")
	public String cartPay(Model model, Authentication auth) {
		List<CartItem> list = ordersService.getOrderList(auth.getName());
		
		model.addAttribute("list", list);
		return "/order/pay";
	}
	
}