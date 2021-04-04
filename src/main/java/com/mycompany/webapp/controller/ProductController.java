package com.mycompany.webapp.controller;

import java.io.File;
import java.io.IOException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpSession;

import org.json.JSONObject;
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
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.mycompany.webapp.dto.Pager;
import com.mycompany.webapp.dto.Photo;
import com.mycompany.webapp.dto.Product;
import com.mycompany.webapp.dto.Review;
import com.mycompany.webapp.dto.SizeProduct;
import com.mycompany.webapp.service.ProductService;

@Controller
@RequestMapping("/product")
public class ProductController {
	private static final Logger logger = LoggerFactory.getLogger(ProductController.class);

	// ProductService 전역변수 의존성 주입
	@Autowired
	private ProductService productService;
	
	@GetMapping(value = "/test", produces = "application/json;charset=UTF-8")
	@ResponseBody // 리턴되는 값이 바디속으로 들어간다.
	public String update(int pid, String size, String amount) {
		logger.info(pid + size + amount);
		JSONObject jsonObject = new JSONObject();
		jsonObject.put("result", "success");
		return jsonObject.toString();
	}
	
	@GetMapping("/testsql")
	public String testsql(Model model) {
		List<String> s = productService.GetOrderIdForReview("user100@naver.com", 3);
		logger.info("s : "+ s.get(0));

		List<String> s1 = productService.GetOrderIdForReview("user100@naver.com", 7);
		if(s1.size()==0) {
			logger.info("s1 : ");	
	
		}
		
	    return "/product/new";
	}
	
	// 테스트용 컨트롤러 - 상품 무작위 생성
//		@GetMapping("/size")
//		public String size(Model model) {
//			
//			for(int i=6; i<=100; i++)
//			{
//				
//				SizeProduct p = new SizeProduct(i,"S");
//				productService.createSize(p);
//				SizeProduct p1 = new SizeProduct(i,"M");
//				productService.createSize(p1);
//				SizeProduct p2 = new SizeProduct(i,"L");
//				productService.createSize(p2);
//				
//			}
//			
//
//		    return "/product/new";
//		}
	
	// 테스트용 컨트롤러 - 상품 무작위 생성
//	@GetMapping("/photo")
//	public String photo(Model model) {
//		Product p = productService.getProductDetail(1);
//		logger.info("a"+p.getPhotolist().size());
//		logger.info("a"+p.getReviewlist().size());
//		logger.info("a"+p.getSizelist().size());
//		for(Photo ps: p.get(0).getPhotolist())
//		{
//			logger.info(ps.getPhoto_sname() + " " + ps.getPhoto_role() + " " + ps.getPhoto_type());
//			
//		}
//
//	    return "/product/new";
//	}
	
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
	public String detail(int pid ,Model model,Authentication auth) {
		Product product = productService.getProductDetail(pid);
		
		
		Photo mainPhoto = null;
		Photo detailPhoto = null;
		List<Photo> subPhotoList = new ArrayList<Photo>();
		for(Photo p: product.getPhotolist()) {
			if(p.getPhoto_role().equals("main")) {
				mainPhoto = p;
			}
			else if(p.getPhoto_role().equals("detail")) {
				detailPhoto = p;
			}
			else {
				subPhotoList.add(p);
			}
		}
		
		
		
		
		model.addAttribute("mainphoto", mainPhoto);
		model.addAttribute("detailphoto", detailPhoto);
		model.addAttribute("subphotolist", subPhotoList);
		model.addAttribute("sizelist", product.getSizelist());
		model.addAttribute("reviewlist", product.getReviewlist());
		model.addAttribute("product", product);
		return "/product/detail";
	}
	
	//리뷰업로드 버튼 클릭
	@PostMapping("/reviewupload")
	public String reviewupload(String title, String content,String score,MultipartFile battach,int pid,Authentication auth,Model model) {
		   
			Review review = new Review();
			Date date = new Date();
			//유저가 해당 상품을 구매했는지 확인
			
		    List<String> orderids= productService.GetOrderIdForReview(auth.getName(), pid);
		   if(orderids.size()!=0) {	
			   review.setOrder_id(orderids.get(0));
			   review.setReview_score(Integer.parseInt(score));
			   review.setReview_date(date);
			   review.setReview_title(title);
			   review.setReview_content(content);
			   review.setUser_id(auth.getName());
			   review.setP_id(pid);
			   
			   
			   if(battach != null && !battach.isEmpty()) {
				  
				   review.setPhoto_oname(battach.getOriginalFilename());
				   review.setPhoto_type(battach.getContentType());
				   String saveName = auth.getName() + "_"+pid +"_"+date.getTime()+"_" + review.getPhoto_oname();
				   review.setPhoto_sname(saveName);
				   File file = new File("C:/Photos/ProductPhotos/Review/" + saveName);
				   logger.info(saveName);
				   try {
					battach.transferTo(file);
				} catch (IllegalStateException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();				   
			   }
		   }
		   else 
		   {
				model.addAttribute("reviewuploadresult", "fail");
				return "redirect:detail?pid="+pid;	

		   }
			productService.createReview(review);   
			model.addAttribute("reviewuploadresult", "success");
		
		   }
		 return "redirect:detail?pid="+pid;		
	}
	
	// 해당 상품이 해당 사용자가 구매한 상품인지 확인
	 @GetMapping(value = "/confirmOrdered", produces = "application/json;charset=UTF-8")
	   @ResponseBody // 리턴되는 값이 바디속으로 들어간다.
		public String write(int pid ,Model model,Authentication auth) {
			List<String> orderids= productService.GetOrderIdForReview(auth.getName(), pid);
			JSONObject jsonObject = new JSONObject();
			logger.info("call!");
			if(orderids.size()!=0) {
				jsonObject.put("result", "success");
		        	
			}else {
				jsonObject.put("result", "fail");
		        
			}
			 return jsonObject.toString(); 
		}
	
	
}
