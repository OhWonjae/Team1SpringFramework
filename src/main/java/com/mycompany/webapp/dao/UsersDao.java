package com.mycompany.webapp.dao;

import org.apache.ibatis.annotations.Mapper;

import com.mycompany.webapp.dto.User;

@Mapper
public interface UsersDao {
	public int insert(User user);

	public User selectByUserid(String user_id);

	public User selectByUsername(String user_name, String user_phone);

	public int updatePwByUserid(User user);

	public int updateHpByUserid(User user);

}