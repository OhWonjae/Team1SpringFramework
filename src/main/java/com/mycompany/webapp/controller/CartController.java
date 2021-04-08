package com.mycompany.webapp.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mycompany.webapp.dto.CartItem;
import com.mycompany.webapp.dto.Pager;
import com.mycompany.webapp.dto.User;
import com.mycompany.webapp.service.CartsService;
import com.mycompany.webapp.service.UsersService;

@Controller
@RequestMapping("/order")
public class CartController {
   @Autowired
      private CartsService cartsService;
   @Autowired
   	  private UsersService usersService;

   
   @GetMapping("/cart")
   public String cart(Model model, Authentication auth, String pageNo, HttpSession session) {
	   
	   User user = usersService.getUser(auth.getName());
	   user.setUser_password("");
	   int intPageNo=1;
	   if(pageNo==null) {
	         //세션에서 Pager를 찾고, 있으면 pageNo설정
	         Pager pager = (Pager) session.getAttribute("pager");
	         if(pager!=null) {
	            intPageNo=pager.getPageNo();
	         }
	      } else {
	         intPageNo = Integer.parseInt(pageNo);
	      }
	   int totalRows = cartsService.getTotalRows(auth.getName());
	   Pager pager = new Pager(3,5, totalRows, intPageNo);
	   session.setAttribute("pager", pager);
	   List<CartItem> list = cartsService.getCartList(auth.getName(), pager);
		
	  if(list.size()==0  && intPageNo>1) { 
		  totalRows = cartsService.getTotalRows(auth.getName());
		  pager = new Pager(3,5, totalRows, intPageNo-1);
		  list = cartsService.getCartList(auth.getName(), pager); 
		  
		  session.setAttribute("pager", pager);
	  }
	 
	   model.addAttribute("user", user);
	   model.addAttribute("list", list);
	   model.addAttribute("pager", pager);
	   return "/order/cart";
   }
   
   @GetMapping(value = "/putcart", produces = "application/json;charset=UTF-8")
   @ResponseBody // 리턴되는 값이 바디속으로 들어간다.
   public String putcart(int pid, String psize, int pamount, Authentication auth) {
       CartItem cart = new CartItem();
         cart.setP_id(pid);
         cart.setP_size(psize);
         cart.setAmount(pamount);
         String userId = auth.getName();
         cart.setUser_id(userId);
         JSONObject jsonObject = new JSONObject();
         List<CartItem> list = cartsService.getCartList(userId);
         for(int i=0;i<list.size();i++) {
            if(userId.equals(list.get(i).getUser_id())
                  && list.get(i).getP_id() == cart.getP_id()
                  && list.get(i).getP_size().equals(cart.getP_size())) {
               
               jsonObject.put("result", "fail");
             return jsonObject.toString();
            } 
         } 
         cartsService.addCart(cart);

         jsonObject.put("result", "success");
         return jsonObject.toString();
   }
   
   @GetMapping("/cart/increase")
   public String increase(Authentication auth, int pid, String psize) {
      cartsService.plusAmount(auth.getName(), pid, psize);
      return "redirect:/order/cart";
   }
   
   @GetMapping("/cart/decrease")
   public String decrease(Authentication auth, int pid, String psize) {

      CartItem cart = cartsService.getCartOne(auth.getName(), pid, psize);
      if(cart.getAmount()>1) {
            cartsService.minusAmount(auth.getName(), pid, psize);   
            return "redirect:/order/cart";
      }
      return "redirect:/order/cart";
   }
   
   @GetMapping("/cart/delete")
   public String delete(Authentication auth, int pid, String psize) {
      cartsService.removeCartList(auth.getName(), pid, psize);
      return "redirect:/order/cart";
   }
   
   @GetMapping("/cart/deleteall")
   public String deleteAll(Authentication auth) {
      cartsService.removeCartAll(auth.getName());
      return "redirect:/order/cart";
   }
}
   
   
