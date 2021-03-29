package com.mycompany.webapp.dao;

import org.apache.ibatis.annotations.Mapper;

import com.mycompany.webapp.dto.User;

@Mapper
public interface UsersDao {
	public int insert(User user);
	public User selectInfoByUid(int uid);
	/*
	 * public User selectNameAndEmailByUid(int uid); public User
	 * selectEmailByUid(int uid); public User selectPasswordByUid(int uid); public
	 * int updatePassword(User user); public int updatePhone(User user); public int
	 * deleteByUid(int uid);
	 */
	public User selectByUemail(String uemail);

}
