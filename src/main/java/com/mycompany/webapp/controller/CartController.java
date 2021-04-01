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
import com.mycompany.webapp.service.CartsService;

@Controller
@RequestMapping("/order")
public class CartController {
	@Autowired
	   private CartsService cartsService; 
	
	@GetMapping("/cart")
	public String cart(Model model, Authentication auth) {
		System.out.println(auth.getName());
		List<CartItem> list = cartsService.getCartList(auth.getName());
		model.addAttribute("list", list);
		return "/order/cart";
	}
	
	@PostMapping("/putcart")
	public String putcart(CartItem cart, Authentication auth) {
		
		cart.setUser_id(auth.getName());
		cartsService.addCart(cart);
		return "redirect:/product/detail";
	}
	
	@GetMapping("/cart/increase")
	public String increase(Authentication auth, int pid) {
		cartsService.plusAmount(auth.getName(), pid);
		return "redirect:/order/cart";
	}
	
	@GetMapping("/cart/decrease")
	public String decrease(Authentication auth, int pid) {

		List<CartItem> list = cartsService.getCartList(auth.getName());
		for(int i=0; i<list.size(); i++) {
			if(list.get(i).getUser_id() == auth.getName()
					&& list.get(i).getP_id() == pid) {
				if(list.get(i).getAmount() > 1) {
					cartsService.minusAmount(auth.getName(), pid);	
					break;
				}
			}
		}
		return "redirect:/order/cart";
	}
	
	@GetMapping("/cart/delete")
	public String delete(Authentication auth, int pid) {
		cartsService.removeCartList(auth.getName(), pid);
		return "redirect:/order/cart";
	}
	
	@GetMapping("/cart/deleteall")
	public String deleteAll(Authentication auth) {
		cartsService.removeCartAll(auth.getName());
		return "redirect:/order/cart";
	}
	
}
