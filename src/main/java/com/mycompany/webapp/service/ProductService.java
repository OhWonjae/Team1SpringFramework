package com.mycompany.webapp.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mycompany.webapp.dao.ProductDao;
import com.mycompany.webapp.dto.Pager;
import com.mycompany.webapp.dto.Product;

@Service
public class ProductService {
	@Autowired
	ProductDao productDao;
	
	
	
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
	//추천 상품 리스트 가져오기
	public List<Product> getRecommandProducts(){
		List<Product> products = productDao.selectRecommandAll();
		return products;
	}
	//베스트 리뷰 상품 리스트 가져오기
	public List<Product> getBestReviewProducts(){
		List<Product> products = productDao.selectBestReviewAll();
		return products;
	}
	//베스트 리뷰 상품 리스트 가져오기
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
	//검색한 상품 리스트 가져오기 -> 파라미터 여러개일 경우 HahsMap으로 넘길 예정
	public List<Product> getSearchProducts(String searchword,String category){
		List<Product> products;
		//만약 전체 상품 가져와야 한다면
		if(category.equals("전체")) {
			products = productDao.selectSearchAll(searchword);
		}
		// 만약 해당 카테고리의 상품을 가져와야 한다면
		else {
			products = productDao.selectSearchCategory(searchword,category);
		}
		return products;
	}	
	//선택한 카테고리 상품 리스트 가져오기
	public List<Product> getCategoryProducts(String category){
		List<Product> products;
		//만약 전체 상품 가져와야 한다면
		if(category.equals("전체")) {
			products = productDao.selectRankAll();
		}
		// 만약 해당 카테고리의 상품을 가져와야 한다면
		else {
			products = productDao.selectCategory(category);
		}
		return products;
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
	
	
	
	
	//Delete
	//상품 삭제하기
	public void RemoveProduct(int pid) {
		productDao.deleteBypid(pid);
	}
	
}
