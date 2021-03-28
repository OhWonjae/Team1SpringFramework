package com.mycompany.webapp.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.mycompany.webapp.dto.Product;
import com.mycompany.webapp.dto.SizeProduct;

@Mapper
public interface SizeProductDao {

	int insert(SizeProduct sizeproduct);

	Product selectBypid(int p_id);

	List<SizeProduct> selectAllBypid(int p_id);

}
