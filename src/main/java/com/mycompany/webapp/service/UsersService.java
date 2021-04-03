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
	
	/*public String login(User user) {
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
	}*/

	// 읽어오기, 비밀번호 찾기(searchId)
	public User getUser(String user_id) {
		User user = usersDao.selectByUserid(user_id);
		return user;
	}

	// 아이디(이메일) 찾기(searchPw)
	public User getUserid(String user_name, String user_phone) {
		User user = usersDao.selectIdByNameAndPassword(user_name, user_phone);
		return user;
	}

	// 비밀번호 변경
	public void updateUser(String user_password, String user_id) {
		usersDao.updatePasswordById(user_password, user_id);
	}
	// 휴대번호 변경
	public void updateUser2(String user_phone, String user_id) {
		usersDao.updatePhoneById(user_phone, user_id);
	}
	
	

}
