package com.mycompany.webapp.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mycompany.webapp.dto.CartItem;
import com.mycompany.webapp.service.CartsService;

@Controller
@RequestMapping("/order")
public class CartController {
	@Autowired
	   private CartsService cartsService; 
	
	@GetMapping("/cart")
	public String cart(Model model) {
		
		List<CartItem> list = cartsService.getCartList("user1@naver.com");
		model.addAttribute("list", list);
		
		return "/order/cart";
	}
	
	/*@PostMapping("/putcart")
	public String putcart(CartItem cart) {
		
		cartlist.setP_id(p_id);
		cartlist.setUser_id(user_id);
		cartsService.addCart(cartlist);
		return "redirect:/product/detail";
	}*/
	
	@GetMapping("/cart/increase")
	public String increase(String uid, int pid) {
		cartsService.plusAmount(uid, pid);
		return "redirect:/order/cart";
	}
	
	@GetMapping("/cart/decrease")
	public String decrease(String uid, int pid) {
		List<CartItem> list = cartsService.getCartList(uid);
		for(int i=0; i<list.size(); i++) {
			if(list.get(i).getUser_id() == uid
					&& list.get(i).getP_id() == pid) {
				if(list.get(i).getAmount() > 1) {
					cartsService.minusAmount(uid, pid);	
					break;
				}
			}
		}
		return "redirect:/order/cart";
	}
	
	@GetMapping("/cart/delete")
	public String delete(String uid, int pid) {
		cartsService.removeCartList(uid, pid);
		return "redirect:/order/cart";
	}
	
	@GetMapping("/cart/deleteall")
	public String deleteAll(String uid) {
		cartsService.removeCartAll(uid);
		return "redirect:/order/cart";
	}
	
}
