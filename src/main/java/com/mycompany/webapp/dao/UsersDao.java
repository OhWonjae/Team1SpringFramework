package com.mycompany.webapp.dao;

import org.apache.ibatis.annotations.Mapper;

import com.mycompany.webapp.dto.User;

@Mapper
public interface UsersDao {
	public int insert(User user);

	public User selectByUserid(String user_id);

	public User selectIdByNameAndPassword(String user_name, String user_phone);

	public void updatePasswordById(User user);

	public void updatePhoneById(User user);

}