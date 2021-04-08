package com.mycompany.webapp.dao;

import java.util.List;
import org.apache.ibatis.annotations.Mapper;

import com.mycompany.webapp.dto.CartItem;
import com.mycompany.webapp.dto.OrderProduct;

@Mapper
public interface OrderProductsDao {
	public List<OrderProduct> productList(String oid);	//select
    public int orderProductList(OrderProduct orderproduct); //insert
}


