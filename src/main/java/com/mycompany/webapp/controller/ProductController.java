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

import com.mycompany.webapp.dto.Product;
import com.mycompany.webapp.service.ProductService;

@Controller
@RequestMapping("/product")
public class ProductController {
	private static final Logger logger = LoggerFactory.getLogger(ProductController.class);

	@Autowired
	private ProductService productService;
	
	@GetMapping("/rank")
	public String rank() {
		List<Product> list = productService.getRankProducts("점퍼");
		for(Product p:list) {
			logger.info(""+p.getP_id());
			logger.info(""+p.getP_name());
			logger.info(""+p.getP_price());
		}
		return "/product/rank";
	}
	
	
	@GetMapping("/rec")
	public String rec() {
		return "/product/rec";
	}
	
	//제품 검색페이지 이동
	@GetMapping("/search")
	public String search() {
		logger.info("블루 , 전체카테고리 검색");
		List<Product> list = productService.getSearchProducts("블루","티셔츠");
		for(Product p:list) {
			logger.info(""+p.getP_id());
			logger.info(""+p.getP_name());
			logger.info(""+p.getP_price());
		}
		/*
		 * logger.info("블루 , 점퍼카테고리 검색"); list =
		 * productService.getSearchProducts("블루","점퍼"); for(Product p:list) {
		 * logger.info(""+p.getP_id()); logger.info(""+p.getP_name());
		 * logger.info(""+p.getP_price()); }
		 */
		return "/product/search";
	}
	
	@GetMapping("/new")
	public String newMethod() {
		List<Product> list = productService.getProducts();
		for(Product p:list) {
			logger.info(""+p.getP_id());
			logger.info(""+p.getP_name());
			logger.info(""+p.getP_price());
		}
		
	    return "/product/new";
	}
	
	//제품 상세페이지 이동
	@GetMapping("/detail")
	public String detail() {
		
		
		/*logger.info("1번 상품 구매했을때 변화");
		productService.UpdateSaledProduct(1);
		Product p = productService.getProduct(1);
		logger.info(""+p.getP_id());
		logger.info(""+p.getP_name());
		logger.info(""+p.getP_price());
		logger.info(""+p.getCategory_name());
		logger.info(""+p.getP_stock());
		logger.info(""+p.getSalescount());
		logger.info(""+p.getP_upload_date());*/
		
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
