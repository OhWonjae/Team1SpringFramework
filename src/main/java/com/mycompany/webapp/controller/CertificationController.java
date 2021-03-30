package com.mycompany.webapp.controller;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mycompany.webapp.dto.User;
import com.mycompany.webapp.service.UsersService;

@Controller
@RequestMapping("/user")
public class CertificationController {
	@Autowired
	private UsersService usersService;
	private static final Logger logger = LoggerFactory.getLogger(CertificationController.class);

	@GetMapping("/login")
	public String login() {
		return "/user/login";
	}

	@GetMapping("/signUp")
	public String signUp() {
		return "/user/signUp";
	}

	@GetMapping("/searchId")
	public String searchId() {
		return "/user/searchId";
	}

	@GetMapping("/searchPw")
	public String searchPw() {
		return "/user/searchPw";
	}

	@GetMapping("/pwChange")
	public String pwChange() {
		return "/user/pwChange";
	}

	@GetMapping("/phoneChange")
	public String phoneChange() {
		return "/user/phoneChange";
	}

	@PostMapping("/my")
	public String change() {
		return "redirect:/user/my";
	}

	@GetMapping("/my")
	public String my() {
		return "/user/my";
	}

	@PostMapping("/join")
	public String join(User user) {
		logger.info(user.getUname());
		logger.info(user.getUemail());
		logger.info(user.getUpassword());
		logger.info(user.getUphone());
		BCryptPasswordEncoder bpe = new BCryptPasswordEncoder();
		user.setUpassword(bpe.encode(user.getUpassword()));
		usersService.join(user);
		return "redirect:/user/login";
	}

	@PostMapping("/login")
	public String login(User user, HttpSession session) {
		String result = usersService.login(user);

		if (result.equals("success")) {
			logger.info(result);
			session.removeAttribute("loginError");
			session.setAttribute("loginUemail", user.getUemail());
			return "redirect:/main";
		} else {
			session.setAttribute("loginError", result);
			return "redirect:/user/login"; // home
		}
	}

	/*
	 * @GetMapping("/logout") public String logout(HttpSession session) {
	 * session.removeAttribute("loginUid");
	 * 
	 * return "redirect:/home"; }
	 */
	@GetMapping("/logout")
	public String logout(HttpSession session) {
		// session.invalidate();
		session.removeAttribute("loginUid");
		return "redirect:/main";
	}

}
