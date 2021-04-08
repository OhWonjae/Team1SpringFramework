package com.mycompany.webapp.controller;

import java.text.DecimalFormat;
import java.util.Calendar;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mycompany.webapp.dto.CartItem;
import com.mycompany.webapp.dto.OrderProduct;
import com.mycompany.webapp.dto.Orders;
import com.mycompany.webapp.dto.Pager;
import com.mycompany.webapp.dto.User;
import com.mycompany.webapp.service.CartsService;
import com.mycompany.webapp.service.OrdersService;
import com.mycompany.webapp.service.UsersService;



@Controller
@RequestMapping("/order")
public class OrderController {

	@Autowired
	OrdersService ordersService;

	@Autowired
	CartsService cartService;	//카트지우기 위해 선언

	@Autowired
	UsersService usersService;


	//카트에서 구매버튼 클릭
	@GetMapping("/pay")
	public String cartPay(Model model, Authentication auth) {
		List<CartItem> list = ordersService.getOrderList(auth.getName());
		model.addAttribute("list", list);
		return "/order/pay";
	}
	
	// pay.jsp에서 결제정보 입력 후 결제하기 버튼 클릭시
	@PostMapping("/do_payment")
	public String pay(Orders orders, OrderProduct orderProduct, HttpServletRequest request , Authentication auth) {   
		orders.setUser_id(auth.getName());

		//orderid 설정 연도+달+일+밀리초+ 6자리난수
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
		orders.setOrder_id(orderId);
		orderProduct.setOrder_id(orderId);

		//pid 저장,amount 저장
		String[] pidArr = request.getParameterValues("pid");
		String [] amountArr = request.getParameterValues("pamount");

		String str="";
		String str2="";
		for(int i=0; i<pidArr.length; i++) {
			str += pidArr[i];
			str2+= amountArr[i];
		}


		String[] strArr = str.split("/");
		String[] strArr2 = str2.split("/");

		int[] intArr = null;
		int[] intArr2 = null;
		if( pidArr != null ){
			intArr = new int[ strArr.length ];
			intArr2 = new int[strArr2.length];
			for( int i=0;i<intArr.length; i++) {
				intArr[i] = Integer.parseInt( strArr[i] );
				intArr2[i] = Integer.parseInt( strArr2[i] );
				orderProduct.setP_id(intArr[i]);
				orderProduct.setAmount(intArr2[i]);
				//orderProduct테이블에 insert
				ordersService.creatOrderProduct(orderProduct);
			}
		}
		orders.setP_id(intArr[0]);


		//order테이블에 저장
		ordersService.createOrders(orders);
		//카트 테이블 삭제
		cartService.removeCartAll(auth.getName());

		return "redirect:payFinish";
	}


	@GetMapping("/payFinish")
	public String payFinish() {
		return "/order/payFinish";
	}


	@GetMapping("/history")
	public String history(String pageNo, Model model, Authentication auth,HttpSession session) {
		User user = usersService.getUser(auth.getName());
		int intPageNo=1;
		//
		if(pageNo==null) {
			Pager pager = (Pager) session.getAttribute("pager");
			if(pager!=null) {
				intPageNo=pager.getPageNo();
			}
		} else {
			intPageNo = Integer.parseInt(pageNo);
		}
		int totalRows = ordersService.getTotalRows(auth.getName());
		Pager pager = new Pager(5,5,totalRows,intPageNo);
		session.setAttribute("pager", pager);
		List<Orders> list = ordersService.getOrdersList(auth.getName(),pager);

		model.addAttribute("list",list);
		model.addAttribute("user",user);
		model.addAttribute("pager", pager);
		return "/order/history";
	}

	@GetMapping("/orders")
	public String orders(String order_id,Model model,Authentication auth) {
		User user = usersService.getUser(auth.getName());
		model.addAttribute("user",user);
		Orders orders=ordersService.ReadOrders(order_id);
		model.addAttribute("orders", orders);
		//발송상품 리스트 보여주기 
		List<OrderProduct> list =ordersService.getProductList(order_id);
		model.addAttribute("list",list);
		return "/order/orders";
	}



	//배송준비중 -> 취소중(ajax사용)
	@GetMapping(value="/deleteOrder", produces ="application/json;charset=UTF-8")
	public String deleteOrder(String order_id, String delivery_status,Orders orders) {
		orders.setOrder_id(order_id);
		orders.setDelivery_status(delivery_status);
		ordersService.deleteOrder(orders);

		return "/order/history";
	}

}