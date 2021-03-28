package com.mycompany.webapp.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.mycompany.webapp.dto.Product;

@Mapper
public interface ProductDao {

	int insert(Product product);

	Product selectBypid(int p_id);

	List<Product> selectAll();

	List<Product> selectRecommandAll();

	List<Product> selectBestReviewAll();

	List<Product> selectRankAll();

	List<Product> selectRankCategory(String category);

	List<Product> selectCategory(String category);

	int update(Product product);

	int updateSalescountAndStock(int p_id);

	int deleteBypid(int p_id);

	List<Product> selectSearchAll(String searchword);

	List<Product> selectSearchCategory(@Param("searchword")String searchword, @Param("category")String category);
	

}
