package com.mycompany.webapp.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.mycompany.webapp.dto.Pager;
import com.mycompany.webapp.dto.Qna;
import com.mycompany.webapp.service.QnaService;

@Controller
@RequestMapping("/boards")
public class QnaController {
	@Autowired
	private QnaService qnaService;	
	private static final Logger logger = LoggerFactory.getLogger(QnaController.class);
	
	//1:1문의 게시판으로 이동
	@GetMapping("/askList")
	public String askList(@RequestParam(defaultValue = "1") int pageNo, Model model) {
			  
			  int totalRows = qnaService.getTotalRows();
		      Pager pager = new Pager(10, 5, totalRows, pageNo);
		      
			  List<Qna> list = qnaService.getBoardList( pager );		  
			  model.addAttribute("qna", list);//as -is => list , be -to => qna
		      model.addAttribute("pager", pager.getTotalRows());
		      
		      //System.out.println(list);//테스트 여기서 list 값을 잘 활용 하면 됨. 지금 insert 하면 값 들어가고,콘솔에 보면 값은 계속 쌓이고는 있음 
		      
		return "/boards/askList";
	}
	//'문의하기'버튼 클릭시 작성란으로 이동
	@GetMapping("/askWrite")
	public String askWrite() {
		return "/boards/askWrite";
	}
	//'1:1 문의하기 등록'버튼 클릭 
	@PostMapping("/insertAskWrite")
	public String insertAskWrite(Qna qna ,Model model) {
		qnaService.insert(qna);
		return "redirect:askList";
	}
	// 1:1 문의 게시판에서 '수정'버튼 클릭
	@GetMapping("/editaskWrite")
	public String editaskWrite() {
		return "/boards/askWrite";
	}
}

