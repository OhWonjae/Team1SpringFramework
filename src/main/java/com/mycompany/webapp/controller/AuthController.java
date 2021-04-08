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
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mycompany.webapp.dto.User;
import com.mycompany.webapp.service.UsersService;

@Controller
public class AuthController {
	@Autowired
	private UsersService usersService;
	private static final Logger logger = LoggerFactory.getLogger(AuthController.class);

	//loginForm.jsp 페이지 불러오기
	@GetMapping("/loginForm")
	public String loginForm() {
		return "/user/loginForm";
	}

	//loginForm.jsp 페이지 불러오기
	@GetMapping("/joinForm")
	public String joinForm() {
		return "/user/joinForm";
	}

	@GetMapping("/searchIdForm")
	public String searchIdForm() {
		return "/user/searchIdForm";
	}

	// POST Method 는 주소창에 파라미터가 노출되지 않는다.
	// 회원가입
	@PostMapping("/join")
	public String join(User user) throws Exception {
		BCryptPasswordEncoder bpe = new BCryptPasswordEncoder();
		user.setUser_password(bpe.encode(user.getUser_password()));
		usersService.join(user);
		return "/user/loginForm";
	}

	// 회원탈퇴
	@GetMapping("user/signout")
	public String signout(Authentication auth, HttpSession session) throws Exception {
		usersService.signout(auth.getName());
		session.invalidate();
		return "redirect:main";
	}
	
	// 회원가입시 아이디 중복 체크
	@RequestMapping(value = "/idCheck", produces = "text/plain; charset=UTF-8")
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

	// 아이디 찾기
	@RequestMapping(value = "/searchIdCheck", produces = "text/plain; charset=UTF-8")
	@ResponseBody
	public String searchIdCheck(String user_name, String user_phone) {
		logger.info("searchIdCheck 진입");
		int result = usersService.searchIdCheck(user_name, user_phone);
		if (result == 1) {
			//System.out.println("가입한 아이디가 있습니다.");
			return "1";
		} else {
			//System.out.println("가입한 아이디가 없습니다.");
			return "0";
		}
	}

	// 비밀번호 찾기
	@RequestMapping(value = "/searchPwCheck", produces = "text/plain; charset=UTF-8")
	@ResponseBody
	public String searchPwCheck(String user_id, String user_phone) {
		logger.info("searchPwCheck 진입");
		int result = usersService.searchPwCheck(user_id, user_phone);
		if (result == 1) {
			//System.out.println("가입한 아이디가 있습니다.");
			return "1";
		} else {
			//System.out.println("가입한 아이디가 없습니다.");
			return "0";
		}
	}

	@GetMapping("/searchPw")
	public String searchPw() {
		return "/user/searchPw";
	}

	@GetMapping("/pwChangeBySearch")
	public String pwChangeBySearch() {
		return "/user/pwChangeBySearch";
	}

	@PostMapping("/searchPw")
	public String searchPw(String user_id, Model model, HttpSession session) throws Exception {
		User user = usersService.getUser(user_id);
		user.setUser_id(user_id);
		session.setAttribute("user", user);
		model.addAttribute("user", user);
		return "/user/pwChangeBySearch";
	}

	// 세션에서 저장된 user 값 불러오기
	@PostMapping("/pwChangeBySearch")
	public String updatePw1(String user_password, HttpSession session) {
		User user = (User) session.getAttribute("user"); // 타입변환 필요
		//System.out.println(user.getUser_id());
		BCryptPasswordEncoder bpe = new BCryptPasswordEncoder();
		usersService.updatePw(bpe.encode(user_password), user.getUser_id());
		// System.out.println(user.getUser_password());
		return "/user/loginForm";
	}

	@PostMapping("/searchIdForm")
	public String searchIdForm(String user_name, String user_phone, Model model) throws Exception {
		User user = usersService.getUserid(user_name, user_phone);
		model.addAttribute("user", user);
		System.out.println(user.getUser_id());
		return "/user/searchId";
	}

	@PostMapping("/searchId")
	public String searchId() throws Exception {
		return "/user/loginForm";
	}

	// my.jsp 상단바에 로그인한 유저의 이름이랑 이메일 보여주기
	// Model을 이용하여 View에 데이터 넘겨주기
	@GetMapping("user/my")
	public String read(Authentication auth, Model model) throws Exception {
		User user = usersService.getUser(auth.getName());
		model.addAttribute("user", user);
		return "/user/my";
	}

	// pwChange.jsp 상단바에 로그인한 유저의 이름이랑 이메일 보여주기
	// Model을 이용하여 View에 데이터 넘겨주기
	@GetMapping("user/pwChange")
	public String pwChange(Authentication auth, Model model) throws Exception {
		User user = usersService.getUser(auth.getName());
		model.addAttribute("user", user);
		return "/user/pwChange";
	}

	// 패스워드 변경시 입력받은 user_password 암호화하고 user_id 받아서 update 
	@PostMapping("user/updatePw")
	public String updatePw(String user_password, Authentication auth) {
		BCryptPasswordEncoder bpe = new BCryptPasswordEncoder();
		usersService.updatePw(bpe.encode(user_password), auth.getName());
		return "redirect:/user/my";
	}

	// phoneChange.jsp 상단바에 로그인한 유저의 이름이랑 이메일 보여주기 
	// Model을 이용하여 View에 데이터 넘겨주기
	@GetMapping("user/phoneChange")
	public String phoneChange(Authentication auth, Model model) throws Exception {
		User user = usersService.getUser(auth.getName());
		model.addAttribute("user", user);
		return "/user/phoneChange";
	}

	// 핸드폰 번호 변경시 입력받은 user_phone 과 user_id 받아서 update
	@PostMapping("user/updatePhone")
	public String updatePhone(String user_phone, Authentication auth) {
		usersService.updatePhone(user_phone, auth.getName());
		return "redirect:/user/my";
	}

	// error403 발생시 error403.jsp로 이동
	@GetMapping("user/error403")
	public String error403() {
		return "/user/error403";
	}

}