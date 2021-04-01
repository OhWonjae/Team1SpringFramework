package com.mycompany.webapp.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mycompany.webapp.dao.PhotosDao;
import com.mycompany.webapp.dao.ProductDao;
import com.mycompany.webapp.dao.ReviewDao;
import com.mycompany.webapp.dao.SizeProductDao;
import com.mycompany.webapp.dto.Pager;
import com.mycompany.webapp.dto.Photo;
import com.mycompany.webapp.dto.Product;
import com.mycompany.webapp.dto.Review;
import com.mycompany.webapp.dto.SizeProduct;

@Service
public class ProductService {
	@Autowired
	ProductDao productDao;

	@Autowired
	SizeProductDao sizeDao;

	@Autowired
	private ReviewDao qnaDao;
	
	@Autowired
	PhotosDao photosDao;


	//Create
	// 상품 생성
	public void createProduct(Product product) {
		productDao.insert(product);
	}




	//Read	
	//특정 상품 가져오기
	public Product getProduct(int pid) {
		Product product = productDao.selectBypid(pid);
		return product;
	}
	//신규 상품 리스트 가져오기
	public List<Product> getProductsByPager(Pager pager){
		List<Product> products = productDao.selectAllByPager(pager);
		
		return products;
	}
	//신규 상품 리스트 개수 가져오기
	public int getProductsCount(){
		int count = productDao.count();
		return count;
	}
	//추천 상품 리스트 가져오기
	public List<Product> getRecommandProductsByPager(Pager pager){
		List<Product> products = productDao.selectRecommandAllByPager(pager);
		return products;
	}
	//추천 상품 리스트 개수 가져오기
	public int getRecommandProductCount(){
		int count = productDao.recommandcount();
		return count;
	}
	//베스트 리뷰 상품 리스트 가져오기
	public List<Product> getBestReviewProducts(){
		List<Product> products = productDao.selectBestReviewAll();
		return products;
	}
	//베스트 리뷰 상품 리스트 개수 가져오기
	public int getBestReviewProductCount(){
		int count = productDao.bestReviewcount();
		return count;
	}
	//랭킹 상품 리스트 가져오기
	public List<Product> getRankProducts(String category){
		List<Product> products;
		//만약 전체 상품 가져와야 한다면
		if(category.equals("전체")) {
			products = productDao.selectRankAll();
		}
		// 만약 해당 카테고리의 상품을 가져와야 한다면
		else {
			products = productDao.selectRankCategory(category);
		}
		return products;
	}	
	//랭킹 상품 카테고리 리스트 개수 가져오기
	public int RankProductCount(String category){
		int count = productDao.rankcategorycount(category);
		return count;
	}
	//검색한 상품 리스트 가져오기
	public List<Product> getSearchProducts(Pager pager, String searchword,String category){
		List<Product> products;
		//만약 전체카테고리 상품 가져와야 한다면
		if(category.equals("전체")) {
			products = productDao.selectSearchAll(pager,searchword);
		}
		// 만약 특정 카테고리의 상품을 가져와야 한다면
		else {
			products = productDao.selectSearchCategory(pager,searchword,category);
		}
		return products;
	}	
	//검색 상품 리스트 개수 가져오기 - 전체 카테고리
	public int SearchProductCount(String searchword,String category){
		int count =0;
		//전체 카테고리의 검색상품 개수 가져오기
		if(category.equals("전체")) {
			count = productDao.searchcount(searchword);
		}
		// 특정 카테고리의 검색상품 개수 가져오기
		else {
			count = productDao.searchcategorycount(searchword,category);
		}
		return count;
	}



	//선택한 카테고리 상품 리스트 가져오기
	public List<Product> getCategoryProducts(String category, Pager pager){
		List<Product> products;
		//만약 전체 상품 가져와야 한다면
		if(category.equals("전체")) {
			products = productDao.selectAllByPager(pager);
		}
		// 만약 해당 카테고리의 상품을 가져와야 한다면
		else {
			products = productDao.selectCategory(category,pager);
		}
		return products;
	}	
	//선택한 카테고리 상품 리스트 개수 가져오기
	public int CategoryProductCount(String category){
		int count = 0;
		if(category.equals("전체")) {
			count = productDao.count();
		}
		// 만약 해당 카테고리의 상품을 가져와야 한다면
		else {
			count = productDao.categorycount(category);
		}
		
		return count;
	}			

	//Update
	//상품 수정하기
	public void UpdateProduct(Product product) {
		productDao.update(product);
	}
	//구매된 상품 업데이트(구매횟수 추가 + 재고수량 감소)
	public void UpdateSaledProduct(int pid) {
		productDao.updateSalescountAndStock(pid);
	}

	//Read
	//특정 상품의 사이즈 가져오기
	public List<SizeProduct> getSizes(int pid) {
		List<SizeProduct> sizes = sizeDao.selectAllBypid(pid);
		return sizes;
	}

	//Delete
	//상품 삭제하기
	public void RemoveProduct(int pid) {
		productDao.deleteBypid(pid);
	}

	/////////////////////
	
	//사진 생성
	public void createPhoto(Photo p) {
		photosDao.insert(p);
	}
	
	

	public List<Review> getREVIEWList(){
		List<Review> list = ReviewDao.selectAll();
		return list;
	}

	public void saveREVIEW(Review review) {

		ReviewDao.insert(review);


	}

	public Review getQna(int bno) {
		Review qna = qnaDao.selectByREVIEW_ID(bno);
		return qna;
	}

	public void updateREVIEW(Review review) {
		ReviewDao.update(review);
	}

	public void deleteREVIEW(int bno) {
		ReviewDao.deleteByREVIEW_ID(bno);
	}

	public int getTotalRows() {
		int rows = qnaDao.count();
		return rows;
	}

}
