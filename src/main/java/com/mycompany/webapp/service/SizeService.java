package com.mycompany.webapp.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mycompany.webapp.dao.ProductDao;
import com.mycompany.webapp.dao.SizeProductDao;
import com.mycompany.webapp.dto.Product;
import com.mycompany.webapp.dto.SizeProduct;

@Service
public class SizeService {
	@Autowired
	SizeProductDao sizeDao;
	
	
	
	//Read
	//특정 상품의 사이즈 가져오기
	public List<SizeProduct> getSizes(int pid) {
		List<SizeProduct> sizes = sizeDao.selectAllBypid(pid);
		return sizes;
	}
	
}
