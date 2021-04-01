package com.mycompany.webapp.controller;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.mycompany.webapp.dto.Pager;
import com.mycompany.webapp.dto.Photo;
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
	@GetMapping("/photo")
	public String photo(Model model) {
		//Photo p = new Photo();
	//	p.setpId(110);
		//p.setPhotoRole("main");
		
	//	String url = photosService.GetProductPhotoUrl(p);
//		logger.info(url);

	    return "/product/new";
	}
	
//	@GetMapping("/create")
//	public String create(Model model) {
//		
//		for(int i=1; i<= 100; i++) {
//			String name = "dog";
//			name+=""+(i%30+1);
//			
//			
//			Photo p = new Photo(i,i,name,name,"JPG","main");
//			System.out.println(i);			
//			productService.createPhoto(p);
//		}
//
//	    return "/product/new";
//	}
	
	
	
	
	// 테스트용 컨트롤러 - 상품 무작위 생성
//	@GetMapping("/create")
//	public String create(Model model) {
//		
//		Random random = new Random();
//		for(int i=2; i< 100; i++) {
//			int r = random.nextInt(5);
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
//			Date now = new Date();
//			Calendar cal = Calendar.getInstance();
//			cal.setTime(now);
//			cal.add(Calendar.MONTH, +(int)(Math.random() * 5));
//			cal.add(Calendar.DAY_OF_MONTH, -(int)(Math.random() * 20));
//			SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
//			String randomDate = format.format(cal.getTime());		
//			Product p = new Product(""+i,i,i,random.nextInt(100),category, cal.getTime(),""+i);
//			System.out.println(cal.getTime());
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
	      logger.info(""+list.get(0).getPhotolist().get(0).getPhoto_sname());
	      logger.info("hi");
	      model.addAttribute("listcount",totalRows);
	      model.addAttribute("list", list);
	      model.addAttribute("pager",pager);
		
	    return "/product/new";
	}
	
	// 랭크페이지(카테고리 All) 이동
	@GetMapping("/rank")
	public String Rank(Model model, HttpSession session) {

		  List<Product> list = productService.getRankProducts("전체");
		  model.addAttribute("listcount",30);
		  model.addAttribute("list", list);
		return "/product/rank";
	}
	// 랭크페이지(카테고리) 이동
	@GetMapping("/rankcategory")
	public String RankCategory(String category,Model model, HttpSession session) {
		int totalRows = productService.RankProductCount(category);
		  List<Product> list = productService.getRankProducts(category);
		  model.addAttribute("listcount",totalRows );
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
	  List<Product> list = productService.getRecommandProductsByPager(pager);
	  model.addAttribute("listcount",totalRows);
	  model.addAttribute("list", list);
	  model.addAttribute("pager",pager);
		return "/product/rec";
	}

	//제품 검색페이지 이동(카테고리 포함)
	@GetMapping("/search")
	public String search(String pageNo,Model model, HttpSession session,String category, String searchword ) {
		// searchword가 이름에 들어간 상품 쭉 찾고 해당 상품들의 카테고리가 왼쪽 바에 선택한 카테고리와 같은걸로 뽑아냄
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
		  
		  int totalRows=0;
		  Pager pager=null; 
		  List<Product> list=null;
		  String resultName="";
		  //카테고리 검색할때
		  if(searchword.equals("")) {
			  //전체 카테고리
			  if(category.equals("전체"))
			  {
				  totalRows= productService.getProductsCount();
				  pager= new Pager(20,5,totalRows,intPageNo);
				  list = productService.getProductsByPager(pager);
			  }
			  //특정 카테고리
			  else {
				  totalRows= productService.CategoryProductCount(category);
				  pager= new Pager(20,5,totalRows,intPageNo);
				  list = productService.getCategoryProducts(category,pager);
			  }
			  
			  resultName += category;
		  }
		  //키워드 검색할때(카테고리는 전체)
		  else if(category.equals("전체")&&!searchword.equals("") ) {
			  totalRows= productService.SearchProductCount(searchword,"전체");
			  logger.info("total : "+totalRows);
			  pager= new Pager(20,5,totalRows,intPageNo);
			  list = productService.getSearchProducts(pager, searchword, "전체");
			  resultName += searchword+"에 대한 검색 결과입니다.";
		  }
		  //키워드 - 카테고리 검색결과
		  else {
			  totalRows= productService.SearchProductCount(searchword, category);
			  logger.info("total : "+totalRows);
			  pager= new Pager(20,5,totalRows,intPageNo);
			  list = productService.getSearchProducts(pager, searchword, category);
			  resultName += searchword+"에 대한 검색 결과입니다.";
		  }

		  session.setAttribute("pager", pager);
		  model.addAttribute("category",category);			  
		  model.addAttribute("word",searchword);
		  model.addAttribute("listcount",totalRows);
		  model.addAttribute("resultname", resultName);
		  model.addAttribute("list", list);
		  model.addAttribute("pager",pager);
		return "/product/search";
	}
	

	
	//제품 상세페이지 이동
	@GetMapping("/detail")
	public String detail(Authentication auth) {
		logger.info(auth.getName());
		
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
