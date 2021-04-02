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

	/*@GetMapping("/searchId")
	public String searchId() {
		return "/user/searchId";
	}
	
	@GetMapping("/searchPw")
	public String searchPw() {
		return "/user/searchPw";
	}*/

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

	/*@GetMapping("user/my")
	public String my() {
		return "/user/my";
	}*/

	@PostMapping("/join")
	public String join(User user) throws Exception {
		logger.info(user.getUser_name());
		logger.info(user.getUser_id());
		logger.info(user.getUser_password());
		logger.info(user.getUser_phone());
		logger.info(user.getDog_size());
		logger.info(user.getUser_phone());

		BCryptPasswordEncoder bpe = new BCryptPasswordEncoder();
		user.setUser_password(bpe.encode(user.getUser_password()));
		usersService.join(user);

		return "redirect:/user/loginForm";
	}

	@GetMapping("/searchId")
	public String read1(String user_name, String user_phone, Model model) {
		User user = usersService.getUser2(user_name, user_phone);
		model.addAttribute("user", user);
		return "/user/searchId";
	}

	@GetMapping("/searchPw")
	public String read2(String user_id, Model model)  {
		User user = usersService.getUser(user_id);
		model.addAttribute("user", user);
		return "/user/searchPw";
	}

	@GetMapping("user/my")
	public String read(Model model, Authentication auth) throws Exception {
		User user = usersService.getUser(auth.getName());
		model.addAttribute("user", user);
		return "/user/my";
	}
	
	@GetMapping("user/phoneChange")
	public String read2(String user_id, Model model, Authentication auth) throws Exception {
		User user = usersService.getUser(auth.getName());
		model.addAttribute("user", user);
		return "/user/phoneChange";
	}
	
	@GetMapping("user/pwChange")
	public String read3(String user_id, Model model, Authentication auth) throws Exception {
		User user = usersService.getUser(auth.getName());
		model.addAttribute("user", user);
		return "/user/pwChange";
	}

	
	
	//PW 변경
	@PostMapping("user/update1")
	public String update1(User user) {
		usersService.updateUser(user);
		return "redirect:/user/loginForm";
	}
	
	//PHONE 변경
	@PostMapping("user/update2")
	public String update2(User user) {
		usersService.updateUser2(user);
		return "redirect:/user/loginForm";
	}


	/*@PostMapping("/login")
	public String login(User user, HttpSession session) {
	  String result = usersService.login(user);
	  
	  logger.info(user.getUser_id());
	  logger.info(user.getUser_password());
	
	  if (result.equals("success")) {
	     logger.info(result);
	     session.removeAttribute("loginError");
	     session.setAttribute("loginUser_id", user.getUser_id());
	     return "redirect:/main";
	  } else {
		  logger.info(result);
	     session.setAttribute("loginError", result);
	     return "redirect:/loginForm"; // home
	  }
	}*/

	/*@PostMapping("/find")
	public String login(User user, HttpSession session) {
	  String result = usersService.login(user);
	
	  if (result.equals("success")) {
	     logger.info(result);
	     session.removeAttribute("loginError");
	     session.setAttribute("loginUser_id", user.getUser_id());
	     return "redirect:/main";
	  } else {
	     session.setAttribute("loginError", result);
	     return "redirect:/user/login"; // home
	  }
	}*/

	/*
	* @GetMapping("/logout") public String logout(HttpSession session) {
	* session.removeAttribute("loginUser_id");
	* 
	* return "redirect:/home"; }
	*/

	@GetMapping("/error403")
	public String error403() {
		return "/error403";
	}

	/*
	 * // 아이디(이메일) 찾기
	 * 
	 * @RequestMapping(value = "/user/searchId", method = RequestMethod.POST)
	 * 
	 * @ResponseBody public String searchId(@RequestParam("inputName_1") String
	 * user_name,
	 * 
	 * @RequestParam("inputPhone_1") String user_phone) {
	 * 
	 * String result = usersService.get_searchId(user_name, user_phone);
	 * 
	 * return result; }
	 * 
	 * // 비밀번호 찾기
	 * 
	 * @RequestMapping(value = "/user/searchPw", method = RequestMethod.GET)
	 * 
	 * @ResponseBody public String searchPw(@RequestParam("userId")String user_id,
	 * 
	 * @RequestParam("userEmail")String user_email, HttpServletRequest request) {
	 * 
	 * mailsender.mailSendWithPassword(user_id, user_email, request);
	 * 
	 * return "user/userSearchPassword"; }
	 */

}