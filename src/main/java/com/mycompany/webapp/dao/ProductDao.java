package com.mycompany.webapp.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.mycompany.webapp.dto.Pager;
import com.mycompany.webapp.dto.Product;

@Mapper
public interface ProductDao {

	int insert(Product product);

	Product selectBypid(int pid);

	

	

	

	List<Product> selectRankAll();

	

	

	int update(Product product);

	int updateSalescountAndStock(int pid);

	int deleteBypid(int pid);

	

	List<Product> selectAllByPager(Pager pager);
	int count();
	
	List<Product> selectRecommandAll();
	int recommandcount();
	
	List<Product> selectBestReviewAll();
	int bestReviewcount();

	List<Product> selectRankCategory(String category);
	int rankcategorycount(String category);
	
	List<Product> selectSearchAll(String searchword);
	int searchcount(String searchkeyword);
	
	List<Product> selectCategory(String category);
	int categorycount(String category);

	List<Product> selectSearchCategory(@Param("searchword")String searchword, @Param("category")String category);
	int searchcategorycount(@Param("searchword")String searchword, @Param("category")String category);
	

}
