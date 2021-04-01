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

	public void join(User user) {
		usersDao.insert(user);
	}
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
		User dbUser = usersDao.selectByUserid(user.getUser_id());
		if (dbUser == null) {
			return "wrongUser_id";
		} else {
			BCryptPasswordEncoder bpe = new BCryptPasswordEncoder();
			boolean result = bpe.matches(user.getUser_password(), dbUser.getUser_password());
			if (result == false) {
				return "wrongUser_password";
			}
		}
		return "success";
	}

	// 읽어오기
	public User getUser(String user_id) {
		User user = usersDao.selectByUserid(user_id);
		return user;
	}

	public User getUser2(String user_name, String user_phone) {
		User user = usersDao.selectByUsername(user_name, user_phone);
		return user;
	}

	public void updateUser(User user) {
		usersDao.updatePwByUserid(user);
	}

	public void updateUser2(User user) {
		usersDao.updateHpByUserid(user);
	}

}
