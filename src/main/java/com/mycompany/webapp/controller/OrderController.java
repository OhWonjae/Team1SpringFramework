package com.mycompany.webapp.controller;

import java.text.DecimalFormat;
import java.util.Calendar;
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
import com.mycompany.webapp.dto.Product;
import com.mycompany.webapp.service.OrdersService;



@Controller
@RequestMapping("/order")
public class OrderController {

	@Autowired
	OrdersService ordersService;

	// pay.jsp에서 결제정보 입력 후 결제하기 버튼 클릭시
	@PostMapping("/do_payment")
	public String putcart(Orders orders,CartItem cart, Product product, Authentication auth) {	
		orders.setUser_id(auth.getName());
		//orderid 설정
		Calendar cal =Calendar.getInstance();
		int year = cal.get(Calendar.YEAR);
		String ym = year + new DecimalFormat("00").format(cal.get(Calendar.MONTH) + 1);
		String ymd = ym +  new DecimalFormat("00").format(cal.get(Calendar.DATE));
		String ymdm = ymd +  new DecimalFormat("00").format(cal.get(Calendar.MILLISECOND));
		String subNum = "";

		for(int i = 1; i <= 6; i ++) {
			subNum += (int)(Math.random() * 10);
		}

		String orderId = ymdm + "_" + subNum;
		System.out.println("hi : "+cart.getP_name());
		System.out.println("hi2 : "+cart.getP_id());
		System.out.println("hi3" +cart.getAmount());
		System.out.println("hi3" +cart.getP_size());
		orders.setOrder_id(orderId);
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
	public String orders(String order_id,Model model) {
		
		Orders orders=ordersService.ReadOrders(order_id);
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
