package com.mycompany.webapp.dao;

import org.apache.ibatis.annotations.Mapper;

import com.mycompany.webapp.dto.User;

@Mapper
public interface UsersDao {
   public int insert(User user);
   

   public User selectByUserid(String user_id);
   
   
	/*
	 * public int join(User user);
	 */   
   /*
    * public User selectNameAndEmailByUid(int uid); public User
    * selectEmailByUid(int uid); public User selectPasswordByUid(int uid); public
    * int updatePassword(User user); public int updatePhone(User user); public int
    * deleteByUid(int uid);
    */
	/*
	 * public int idCheck() throws Exception; public int passCheck() throws
	 * Exception;
	 */
   
   

}