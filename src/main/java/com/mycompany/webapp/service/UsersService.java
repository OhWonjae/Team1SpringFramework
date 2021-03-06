package com.mycompany.webapp.service;

import org.springframework.beans.factory.annotation.Autowired;
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
	
	
	
	
	public int idCheck(String user_id) {
		return usersDao.idCheck(user_id);
	}
	
	/*public int idCheck(String user_id) throws Exception {
		int result = usersDao.idCheck(user_id);
		return result;
	}*/

	// 읽어오기, 비밀번호 찾기(searchId)
	public User getUser(String user_id) {
		User user = usersDao.selectByUserid(user_id);
		return user;
	}
	// count(user_password)
	public int searchPwCheck(String user_id, String user_phone) {
		return usersDao.searchPwCheck(user_id, user_phone);
	}
	// 아이디(이메일) 찾기(searchPw)
	public User getUserid(String user_name, String user_phone) {
		User user = usersDao.selectIdByNameAndPassword(user_name, user_phone);
		return user;
	}  
	// count(user_id)
	public int searchIdCheck(String user_name, String user_phone) {
		return usersDao.searchIdCheck(user_name, user_phone);
	}
	
	// 비밀번호 변경
	public void updatePw(String user_password, String user_id) {
		usersDao.updatePasswordById(user_password, user_id);
	}
	// 휴대번호 변경
	public void updatePhone(String user_phone, String user_id) {
		usersDao.updatePhoneById(user_phone, user_id);
	}

	// 회원탈퇴
	public void signout(String user_id) {
		usersDao.updateEnabledById(user_id);
	}


	

	
	
	

}
