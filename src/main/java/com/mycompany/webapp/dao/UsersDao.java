package com.mycompany.webapp.dao;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.mycompany.webapp.dto.User;

@Mapper
public interface UsersDao {
	public int insert(User user);


	public User selectIdByNameAndPassword(@Param("user_name") String user_name, @Param("user_phone") String user_phone);

	//public int updatePasswordById(@Param("user_password") String user_password, @Param("user_id") String user_id);

	public int updatePhoneById(@Param("user_phone") String user_phone, @Param("user_id") String user_id);


	public int updatePasswordById(@Param("user_password") String user_password, @Param("user_id") String user_id);

	public User selectByUserid(String user_id);

}