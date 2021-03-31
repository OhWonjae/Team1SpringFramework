package com.mycompany.webapp.controller;

import java.util.List;
import java.util.Set;

import org.slf4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mycompany.webapp.dto.Cart;
import com.mycompany.webapp.service.CartsService;

@Controller
@RequestMapping("/order")
public class CartController {
	@Autowired
	   private CartsService cartsService; 
	
	@GetMapping("/cart")
	public String cart(Model model) {
		
		List<Cart> list = cartsService.getCartList();
		model.addAttribute("list", list);
		
		return "/order/cart";
	}
	
	@GetMapping("/putcart")
	public String putcart(int pid) {
		
		cartsService.addCart(pid);
		return "redirect:/product/detail";
	}
	
	@GetMapping("/cart/increase")
	public String increase(int uid, int pid) {
		cartsService.plusAmount(uid, pid);
		return "redirect:/order/cart";
	}
	
	@GetMapping("/cart/decrease")
	public String decrease(int uid, int pid) {
		List<Cart> list = cartsService.getCartList();
		for(int i=0; i<list.size(); i++) {
			if(list.get(i).getUid() == uid
					&& list.get(i).getPid() == pid) {
				if(Integer.parseInt(list.get(i).getCamount()) > 1) {
					cartsService.minusAmount(uid, pid);	
					break;
				}
			}
		}
		return "redirect:/order/cart";
	}
	
	@GetMapping("/cart/delete")
	public String delete(int uid, int pid) {
		cartsService.removeCartList(uid, pid);
		return "redirect:/order/cart";
	}
	
	@GetMapping("/cart/deleteall")
	public String deleteAll(int uid) {
		cartsService.removeCartAll(uid);
		return "redirect:/order/cart";
	}
	
}
