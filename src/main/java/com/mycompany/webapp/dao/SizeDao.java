package com.mycompany.webapp.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.mycompany.webapp.dto.Product;
import com.mycompany.webapp.dto.Size;

@Mapper
public interface SizeDao {

	int insert(Product product);

	Product selectBypid(int p_id);

	List<Size> selectAllBypid(int p_id);

}
