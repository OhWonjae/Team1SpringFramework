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

	//cart 리스트
	@GetMapping("/cart")
	public String cart(Model model, Authentication auth, String pageNo, HttpSession session) {

		User user = usersService.getUser(auth.getName()); //usersService에서 로그인한 유저 정보 가져오기
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

		if(list.size()==0  && intPageNo>1) {  //현재 페이지에서 list가 없고, 페이지넘버가 1 이상일 때 -> 앞 페이지로 이동시켜줌
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

	//장바구니 상품 담기
	@GetMapping(value = "/putcart", produces = "application/json;charset=UTF-8")
	@ResponseBody // 리턴되는 값이 바디속으로 들어감
	public String putcart(int pid, String psize, int pamount, Authentication auth) {
		CartItem cart = new CartItem();
		//카트에 담을 때 pid, psize, pamount값을 받아서 cart객체에 set해줌
		cart.setP_id(pid);
		cart.setP_size(psize);
		cart.setAmount(pamount);
		String userId = auth.getName(); //userId에 로그인한 user의 id값 넣고 이를 cart객체에 set
		cart.setUser_id(userId);
		JSONObject jsonObject = new JSONObject();
		List<CartItem> list = cartsService.getCartList(userId); 
		for(int i=0;i<list.size();i++) { //list 개수만큼 for문 돌면서
			if(userId.equals(list.get(i).getUser_id()) //유저가 같은 상품의 동일한 사이즈를 카트에 담으려고 하면
					&& list.get(i).getP_id() == cart.getP_id()
					&& list.get(i).getP_size().equals(cart.getP_size())) {

				jsonObject.put("result", "fail"); //fail값을 넘기고
				return jsonObject.toString();
			} 
		} 
		cartsService.addCart(cart); //같은 상품이 아니라면 cart에 담아주고 success를 넘김

		jsonObject.put("result", "success");
		return jsonObject.toString();
	}

	//개별 장바구니 amount 증가
	@GetMapping("/cart/increase")
	public String increase(Authentication auth, int pid, String psize) {
		cartsService.plusAmount(auth.getName(), pid, psize);
		return "redirect:/order/cart";
	}

	//개별 장바구니 amount 감소
	@GetMapping("/cart/decrease")
	public String decrease(Authentication auth, int pid, String psize) {

		CartItem cart = cartsService.getCartOne(auth.getName(), pid, psize);
		if(cart.getAmount()>1) {
			cartsService.minusAmount(auth.getName(), pid, psize);   
			return "redirect:/order/cart";
		}
		return "redirect:/order/cart";
	}

	//개별 장바구니 상품 삭제
	@GetMapping("/cart/delete")
	public String delete(Authentication auth, int pid, String psize) {
		cartsService.removeCartList(auth.getName(), pid, psize);
		return "redirect:/order/cart";
	}

	//카트 전체 삭제 -> 주문했을 때
	@GetMapping("/cart/deleteall")
	public String deleteAll(Authentication auth) {
		cartsService.removeCartAll(auth.getName());
		return "redirect:/order/cart";
	}
}


