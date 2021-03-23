package com.mycompany.webapp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/product")
public class ProductController {
	
	@GetMapping("/rank")
	public String rank() {
		return "/product/rank";
	}
	
	
	@GetMapping("/rec")
	public String rec() {
		return "/product/rec";
	}
	
	//제품 검색페이지 이동
	@GetMapping("/search")
	public String search() {
		return "/product/search";
	}
	
	@GetMapping("/new")
	public String newMethod() {
	    return "/product/new";
	}
	
	//제품 상세페이지 이동
	@GetMapping("/detail")
	public String detail() {
		return "/product/detail";
	}
	
	//리뷰업로드 버튼 클릭
	@PostMapping("/reviewupload")
	public String reviewupload(@RequestParam()String title, @RequestParam()String content,@RequestParam(defaultValue="n") String media, Model model) {
			
		//여기서 리뷰로 쓴 정보 DB에 저장
		System.out.println(title + content + media);;
		return "redirect:detail";
	}
		

}
