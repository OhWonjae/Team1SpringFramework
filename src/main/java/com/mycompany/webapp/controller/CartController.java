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
		List<CartItem> list = cartsService.getCartList(auth.getName());
		for(CartItem c:list) {
			System.out.println("realpi : "+c.getP_id());
		}
		model.addAttribute("list", list);
		return "/order/cart";
	}
	
	@GetMapping("/putcart")
	   public String putcart(int pid, String psize, int pamount, Authentication auth) {
	      CartItem cart = new CartItem();
	      cart.setP_id(pid);
	      cart.setP_size(psize);
	      cart.setAmount(pamount);
	      
	      String userId = auth.getName();
	      cart.setUser_id(userId);
	      
	      List<CartItem> list = cartsService.getCartList(userId);
	      for(int i=0;i<list.size();i++) {
	         if(userId.equals(list.get(i).getUser_id())
	               && list.get(i).getP_id() == cart.getP_id()) {
	            
	            cartsService.addCart(cart);
	            return "redirect:/order/cart";
	         } 
	      } 
	      return "redirect:/product/detail";
	   }
	
	@GetMapping("/cart/increase")
	public String increase(Authentication auth, int pid) {
		cartsService.plusAmount(auth.getName(), pid);
		return "redirect:/order/cart";
	}
	
	@GetMapping("/cart/decrease")
	public String decrease(Authentication auth, int pid) {

		CartItem cart = cartsService.getCartOne(auth.getName(), pid);
		if(cart.getAmount()>1) {
				cartsService.minusAmount(auth.getName(), pid);	
				return "redirect:/order/cart";
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
