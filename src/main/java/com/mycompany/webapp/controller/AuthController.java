package com.mycompany.webapp.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

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
	@GetMapping("/searchIdForm")
	public String searchIdForm() {
		return "/user/searchIdForm";
	}
	@PostMapping("/join")
	public String join(User user) throws Exception {
		BCryptPasswordEncoder bpe = new BCryptPasswordEncoder();
		user.setUser_password(bpe.encode(user.getUser_password()));

		usersService.join(user);

		return "/user/loginForm";
	}
	/*
		// 회원가입 post
		@RequestMapping(value = "/joinForm", method = RequestMethod.POST)
		public String join(User user) throws Exception {
			logger.info("post join");
			
			int result = usersService.idCheck(user);
			System.out.println(result);
			try {
				if (result == 1) {
					logger.info("join");
		
					return "/user/joinForm";
				} else if (result == 0) {
					usersService.join(user);
				}
			} catch (Exception e) {
				throw new RuntimeException();
			}
			return "redirect:/";
		}*/

	// 아이디 중복 체크
	@RequestMapping(value="/idCheck", produces="text/plain; charset=UTF-8")
	@ResponseBody
	public String idCheck(String user_id) {
		logger.info("idCheck 진입");
		int result = usersService.idCheck(user_id);
		if (result == 1) {
			System.out.println("중복있음");
			return "1";
		} else {
			System.out.println("중복없음");
			return "0";
		}
	}

	@GetMapping("/searchPw")
	public String searchPw() {
		return "/user/searchPw";
	}

	@PostMapping("/searchPw")
	public String searchPw(String user_id, Model model) throws Exception {
		User user = usersService.getUser(user_id);
		BCryptPasswordEncoder bpe = new BCryptPasswordEncoder();
		user.setUser_password(bpe.encode(user.getUser_password()));
		model.addAttribute("user", user);
		System.out.println(user.getUser_password());
		return "/user/pwChange";
	}

	@PostMapping("/searchIdForm")
	public String searchIdForm(String user_name, String user_phone, Model model) throws Exception {
		User user = usersService.getUserid(user_name, user_phone);
		model.addAttribute("user", user);
		System.out.println(user.getUser_id());
		return "/user/searchId";
	}

	@GetMapping("/searchId")
	public String searchId(String user_name, String user_phone, Model model) throws Exception {
		User user = usersService.getUserid(user_name, user_phone);
		model.addAttribute("user", user);
		System.out.println(user.getUser_id());
		return "/user/searchId";
	}

	@PostMapping("/searchId")
	public String searchId() throws Exception {
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
		User user = usersService.getUser(auth.getName());
		BCryptPasswordEncoder bpe = new BCryptPasswordEncoder();
		usersService.updateUser(bpe.encode(user_password), auth.getName());
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

	@GetMapping("user/error403")
	public String error403() {
		return "/user/error403";
	}

}