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
	private static final Logger logger = LoggerFactory.getLogger(ProductController.class);

	@Autowired
	OrdersService ordersService;

	@Autowired
	CartsService cartService;
	@Autowired
	UsersService usersService;


	// pay.jsp에서 결제정보 입력 후 결제하기 버튼 클릭시
	@PostMapping("/do_payment")
	public String putcart(Orders orders, OrderProduct orderProduct, HttpServletRequest request , Authentication auth) {   
		System.out.println(orders.getOrder_phone());
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
		orders.setOrder_id(orderId);
		orderProduct.setOrder_id(orderId);

		//pid 저장,amount 저장
		String[] arr = request.getParameterValues("prod");
		String [] arr2 = request.getParameterValues("pamount");

		String str="";
		String str2="";
		for(int i=0; i<arr.length; i++) {
			str += arr[i];
			str2+= arr2[i];
		}


		String[] strArr = str.split("/");
		String[] strArr2 = str2.split("/");

		int[] intArr = null;
		int[] intArr2 = null;
		if( arr != null ){
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
	public String history(String pageNo, Model model, Authentication auth,HttpSession session) {
		User user = usersService.getUser(auth.getName());
		int intPageNo=1;
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
		if(list.size()==0  && intPageNo>1) { 
			  totalRows = ordersService.getTotalRows(auth.getName());
			  pager = new Pager(3,5, totalRows, intPageNo-1);
			  list = ordersService.getOrdersList(auth.getName(), pager); 
			  
			  session.setAttribute("pager", pager);
		  }
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
		List<OrderProduct> list =ordersService.getProductList(order_id);
		model.addAttribute("list",list);
		return "/order/orders";
	}



	//카트에서 구매버튼 클릭
	@GetMapping("/pay")
	public String cartPay(Model model, Authentication auth) {
		List<CartItem> list = ordersService.getOrderList(auth.getName());
		model.addAttribute("list", list);
		return "/order/pay";
	}

	/*@GetMapping("/deleteOrder")
   public String deleteOrder(Orders orders) {
	  ordersService.deleteOrder(orders);
	   return "redirect:history";
  }*/

	@GetMapping(value="/deleteOrder", produces ="application/json;charset=UTF-8")
	public String deleteOrder(String order_id, String delivery_status,Orders orders) {
		orders.setOrder_id(order_id);
		orders.setDelivery_status(delivery_status);
		ordersService.deleteOrder(orders);

		return "redirect:history";
	}

}