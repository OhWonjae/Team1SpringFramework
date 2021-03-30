package com.mycompany.webapp.controller;

import java.util.Date;
import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpSession;

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
import com.mycompany.webapp.dto.Product;
import com.mycompany.webapp.service.ProductService;

@Controller
@RequestMapping("/product")
public class ProductController {
	private static final Logger logger = LoggerFactory.getLogger(ProductController.class);

	// ProductService 전역변수 의존성 주입
	@Autowired
	private ProductService productService;
	
	
	// 테스트용 컨트롤러 - 상품 무작위 생성
//	@GetMapping("/create")
//	public String create(Model model) {
//		
//		Random random = new Random();
//		for(int i=2; i< 100; i++) {
//			int r = random.nextInt(4);
//			String category = "티셔츠";
//			switch(r) {
//			case 0: category = "티셔츠";
//			break;
//			case 1: category = "후드티";
//			break;
//			case 2: category = "패딩/코트";
//			break;
//			case 3: category = "원피스";
//			break;
//			case 4: category = "올인원";
//			break;
//			}
//			Date data = new Date();
//			Product p = new Product(""+i,i,i,random.nextInt(100),category,data,""+i);
//			productService.createProduct(p);
//		}
//
//	    return "/product/new";
//	}
	

	
	// 신규페이지 이동
	@GetMapping("/new")
	public String newMethod(String pageNo,Model model, HttpSession session) {
		 int intPageNo = 1;
	      //세션에서 pager를 찾고, 있으면 pageNo설정
	      if(pageNo == null) {   //클라이언트에서 pageNo가 넘어오지 않았을 경우
	         Pager pager = (Pager)session.getAttribute("pager");
	         if(pager!=null) {
	            intPageNo = pager.getPageNo();
	         }
	      }else { //클라이언트에서 pageNo가 넘어왔을 때
	         intPageNo = Integer.parseInt(pageNo);
	      }
	      
	      int totalRows = productService.getProductsCount();
	      Pager pager = new Pager(20,5,totalRows,intPageNo);
	      session.setAttribute("pager", pager);
	      List<Product> list = productService.getProductsByPager(pager);
	    
	      model.addAttribute("list", list);
	      model.addAttribute("pager",pager);
		
	    return "/product/new";
	}
	
	// 랭크페이지(카테고리 All) 이동
	@GetMapping("/rank")
	public String Rank(Model model, HttpSession session) {

		  List<Product> list = productService.getRankProducts("전체");
		  model.addAttribute("list", list);
		return "/product/rank";
	}
	// 랭크페이지(카테고리) 이동
	@GetMapping("/rankcategory")
	public String RankCategory(String category,Model model, HttpSession session) {

		  List<Product> list = productService.getRankProducts(category);
		  model.addAttribute("list", list);
		return "/product/rank";
	}	
	// 추천페이지 이동
	@GetMapping("/rec")
	public String rec(String pageNo,Model model, HttpSession session) {
	 int intPageNo = 1;
	  //세션에서 pager를 찾고, 있으면 pageNo설정
	  if(pageNo == null) {   //클라이언트에서 pageNo가 넘어오지 않았을 경우
	     Pager pager = (Pager)session.getAttribute("pager");
	     if(pager!=null) {
	        intPageNo = pager.getPageNo();
	     }
	  }else { //클라이언트에서 pageNo가 넘어왔을 때
	     intPageNo = Integer.parseInt(pageNo);
	  }
	  
	  int totalRows = productService.getRecommandProductCount();
	  Pager pager = new Pager(20,5,totalRows,intPageNo);
	  session.setAttribute("pager", pager);
	  List<Product> list = productService.getProductsByPager(pager);
	
	  model.addAttribute("list", list);
	  model.addAttribute("pager",pager);
		return "/product/rec";
	}
	
	//제품 검색페이지 이동
	@GetMapping("/search")
	public String search() {
		logger.info("블루 , 전체카테고리 검색");
		List<Product> list = productService.getSearchProducts("블루","티셔츠");
		for(Product p:list) {
			logger.info(""+p.getPid());
			logger.info(""+p.getPname());
			logger.info(""+p.getPprice());
		}
		/*
		 * logger.info("블루 , 점퍼카테고리 검색"); list =
		 * productService.getSearchProducts("블루","점퍼"); for(Product p:list) {
		 * logger.info(""+p.getPid()); logger.info(""+p.getPname());
		 * logger.info(""+p.getPprice()); }
		 */
		return "/product/search";
	}
	

	
	//제품 상세페이지 이동
	@GetMapping("/detail")
	public String detail() {
		
		
		/*logger.info("1번 상품 구매했을때 변화");
		productService.UpdateSaledProduct(1);
		Product p = productService.getProduct(1);
		logger.info(""+p.getPid());
		logger.info(""+p.getPname());
		logger.info(""+p.getPprice());
		logger.info(""+p.getCategoryname());
		logger.info(""+p.getPstock());
		logger.info(""+p.getSalescount());
		logger.info(""+p.getPuploaddate());*/
		
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
