package com.mycompany.webapp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/index")
public class askController {

	//1:1문의 게시판으로 이동
	@GetMapping("/askList")
	public String askList() {
		return "/index/askList";
	}
	//'문의하기'버튼 클릭시 작성란으로 이동
	@GetMapping("/askWrite")
	public String askWrite() {
		return "/index/askWrite";
	}
	//'1:1 문의하기 등록'버튼 클릭 
	@PostMapping("/insertAskWirte")
	public String insertAskWirte(@RequestParam()String qnaList, @RequestParam()String qcontext,@RequestParam(defaultValue="n") String qphoto, Model model) {
		System.out.println (qnaList + qcontext + qphoto);
		return "redirect:askList";
	}
	// 1:1 문의 게시판에서 '수정'버튼 클릭
	@GetMapping("/editAskWirte")
	public String editAskWirte() {
		return "redirect:askList";
	}
}
