package com.mycompany.webapp.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mycompany.webapp.dao.ProductDao;
import com.mycompany.webapp.dao.SizeDao;
import com.mycompany.webapp.dto.Product;
import com.mycompany.webapp.dto.Size;

@Service
public class SizeService {
	@Autowired
	SizeDao sizeDao;
	
	
	
	//Read
	//특정 상품의 사이즈 가져오기
	public List<Size> getSizes(int p_id) {
		List<Size> sizes = sizeDao.selectAllBypid(p_id);
		return sizes;
	}
	
}
