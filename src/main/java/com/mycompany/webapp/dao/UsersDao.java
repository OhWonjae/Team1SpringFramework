package com.mycompany.webapp.dao;

import org.apache.ibatis.annotations.Mapper;

import com.mycompany.webapp.dto.User;

@Mapper
public interface UsersDao {
   public int insert(User user);

	/*
	 * public int join(User user);
	 */   public User selectInfoByUser_id(String user_id);
   /*
    * public User selectNameAndEmailByUid(int uid); public User
    * selectEmailByUid(int uid); public User selectPasswordByUid(int uid); public
    * int updatePassword(User user); public int updatePhone(User user); public int
    * deleteByUid(int uid);
    */
   public User selectByUser_id(String user_id);
	/*
	 * public int idCheck() throws Exception; public int passCheck() throws
	 * Exception;
	 */
   
   

}