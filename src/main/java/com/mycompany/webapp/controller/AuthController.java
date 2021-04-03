package com.mycompany.webapp.controller;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.mycompany.webapp.dto.User;
import com.mycompany.webapp.service.UsersService;

@Controller
public class AuthController {
	@Autowired
	private UsersService usersService;
	private static final Logger logger = LoggerFactory.getLogger(AuthController.class);

	@GetMapping("/loginForm")
	public String loginForm() {
		return "/user/loginForm";
	}

	@GetMapping("/joinForm")
	public String joinForm() {
		return "/user/joinForm";
	}

	@GetMapping("/searchId")
	public String searchId() {
		return "/user/searchId";
	}

	@GetMapping("/searchPw")
	public String searchPw() {
		return "/user/searchPw";
	}

	@PostMapping("/join")
	public String join(User user) throws Exception {
		BCryptPasswordEncoder bpe = new BCryptPasswordEncoder();
		user.setUser_password(bpe.encode(user.getUser_password()));
		usersService.join(user);
		return "redirect:/user/loginForm";
	}

	@PostMapping("/searchPw")
	public String searchPw(String user_id, Model model) throws Exception {
		User user = usersService.getUser(user_id);
		BCryptPasswordEncoder bpe = new BCryptPasswordEncoder();
		user.setUser_password(bpe.encode(user.getUser_password()));
		model.addAttribute("user", user);
		System.out.println(user.getUser_password());
		return "/user/loginForm";
	}

	
	@PostMapping("/searchId")
	public String searchId(String user_name, String user_phone, Model model) throws Exception {
		User user = usersService.getUserid(user_name, user_phone);
		model.addAttribute("user", user);
		System.out.println(user.getUser_id());
		return "/user/loginForm";
	}

	@GetMapping("user/my")
	public String read(Authentication auth, Model model) throws Exception {
		User user = usersService.getUser(auth.getName());
		model.addAttribute("user", user);
		return "/user/my";
	}

	// PW 변경
	@GetMapping("user/pwChange")
	public String pwChange(Authentication auth, Model model) throws Exception {
		User user = usersService.getUser(auth.getName());
		model.addAttribute("user", user);
		return "/user/pwChange";
	}

	@PostMapping("user/updateUser")
	public String updateUser(String user_password, Authentication auth) {
		usersService.updateUser(user_password, auth.getName());
		User user = usersService.getUser(auth.getName());
		BCryptPasswordEncoder bpe = new BCryptPasswordEncoder();
		user.setUser_password(bpe.encode(user.getUser_password()));
		return "redirect:/user/my";
	}

	// PHONE 변경
	@GetMapping("user/phoneChange")
	public String phoneChange(Authentication auth, Model model) throws Exception {
		User user = usersService.getUser(auth.getName());
		model.addAttribute("user", user);
		return "/user/phoneChange";
	}

	@PostMapping("user/updateUser2")
	public String updateUser2(String user_phone, Authentication auth) {
		usersService.updateUser2(user_phone, auth.getName());
		return "redirect:/user/my";
	}

	/*@PostMapping("/loginForm")
	public String login(User user, HttpSession session) {
		String result = usersService.login(user);
		logger.info(user.getUser_id());
		logger.info(user.getUser_password());
	
		if (result.equals("success")) {
			logger.info(result);
			session.removeAttribute("loginError");
			session.setAttribute("loginUser_id", user.getUser_id());
			return "redirect:/user/main";
		} else {
			logger.info(result);
			session.setAttribute("loginError", result);
			return "redirect:/user/loginForm";
		}
	}*/

	@GetMapping("user/error403")
	public String error403() {
		return "/user/error403";
	}

}