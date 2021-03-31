package com.mycompany.webapp.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.mycompany.webapp.dao.UsersDao;
import com.mycompany.webapp.dto.User;

@Service
public class UsersService {
   @Autowired
   private UsersDao usersDao;
   
	/*
	 * public int emailCheck() throws Exception { int result = usersDao.idCheck();
	 * return result; }
	 * 
	 * public int passCheck() throws Exception { int result = usersDao.passCheck();
	 * return result; }
	 * 
	 * 
	 * public String join(User user) { User dbUser =
	 * usersDao.selectByUemail(user.getUemail()); if(dbUser == user.getUemail()) {
	 * return "overlapUemail"; } usersDao.insert(user); return "success"; }
	 */

   public String login(User user) {
      User dbUser = usersDao.selectByUemail(user.getUemail());
      if(dbUser == null) {
         return "wrongUemail";	
      } else {
         BCryptPasswordEncoder bpe = new BCryptPasswordEncoder();
         boolean result = bpe.matches(user.getUpassword(), dbUser.getUpassword());
         if(result == false) {
            return "wrongUpassword";            
         }
      }
      return "success";
   }
   
   
}