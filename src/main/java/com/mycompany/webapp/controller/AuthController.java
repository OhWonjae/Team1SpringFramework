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
public class AuthController {
   @Autowired
   private UsersService usersService;
   private static final Logger logger = LoggerFactory.getLogger(AuthController.class);

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

      BCryptPasswordEncoder bpe = new BCryptPasswordEncoder();
      user.setUser_password(bpe.encode(user.getUser_password()));
		/*
		 * usersService.join(user);
		 */      
      return "redirect:/user/login";
   }

   @PostMapping("/login")
   public String login(User user, HttpSession session) {
      String result = usersService.login(user);

      if (result.equals("success")) {
         logger.info(result);
         session.removeAttribute("loginError");
         session.setAttribute("loginUser_id", user.getUser_name());
         return "redirect:/main";
      } else {
         session.setAttribute("loginError", result);
         return "redirect:/user/login"; // home
      }
   }
   
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
   @PostMapping("/logout")
   public String logout(HttpSession session) {
      //session.invalidate();
	  session.removeAttribute("loginUser_id");
      return "redirect:/main";
   }
   
   @GetMapping("/error403")
   public String error403() {
      return "user/error403";
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