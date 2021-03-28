package com.mycompany.webapp.dao;

import java.util.List;
import org.apache.ibatis.annotations.Mapper;

import com.mycompany.webapp.dto.OrderProduct;

@Mapper
public interface OrderProductsDao {
	public List<OrderProduct> orderList();
    public int insert(OrderProduct orderproduct);
    public int updateStatus(OrderProduct orderproduct);
   
}


