package com.mycompany.webapp.controller;

import java.sql.Connection;
import java.util.List;

import javax.sql.DataSource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mycompany.webapp.dto.Pager;
import com.mycompany.webapp.dto.Product;
import com.mycompany.webapp.service.ProductService;

@Controller
@RequestMapping("/")
public class MainController {
	private static final Logger logger = LoggerFactory.getLogger(ResourceController.class);
	@Autowired
	DataSource dataSource;
	@Autowired
	ProductService productService; 
	
	
	@GetMapping("/main")
	public String main(Model model) {
		 
	      
	      Pager pager = new Pager(5,1,5,1);
	      List<Product> newlist = productService.getProductsByPager(pager);
	      model.addAttribute("newlist", newlist);
		
	      List<Product> reclist = productService.getRecommandProductsByPager(pager);
	      model.addAttribute("reclist", reclist);
	      
	      List<Product> ranklist = productService.getRankProducts("전체");
	      model.addAttribute("ranklist", ranklist);
	      
	      List<Product> bestreviewlist = productService.getBestReviewProducts();
	      model.addAttribute("bestreviewlist", bestreviewlist);
	      return "/main";
	}
	
	@PostMapping("/main")
	public String PostMain() {
		return "redirect:/main";
	}
	
	 @RequestMapping("/content")
	   public String content(Model model) {
	      Connection conn=null;
	      String connInfo = null;
	      try {
	         //커넥션 풀에서 커넥션 객체를 대여해 오기
	         conn = dataSource.getConnection();
	         model.addAttribute("connStatus","성공");
	      }catch(Exception e) {
	         e.printStackTrace();
	         model.addAttribute("connStatus","실패");
	      }finally {
	         try {
	            //커넥션 풀로 커넥션 객체를 반납하기
	            conn.close();
	         }catch(Exception e) {
	            
	         }
	      }
	      return "/main";
	   }

}
