package com.mohazi.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.mohazi.domain.AuthVO;
import com.mohazi.domain.FAQVO;
import com.mohazi.domain.UsersVO;
import com.mohazi.service.FAQService;
import com.mohazi.service.UsersService;

import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@AllArgsConstructor
public class CommonController {
	
	private UsersService usersService;
	private FAQService FAQService;
	
	@Setter(onMethod_ = @Autowired)
	private PasswordEncoder pwencoder;
	
	// 로그인 화면
	@RequestMapping(value = "/customLogin", method = RequestMethod.GET)
	public void loginInput(String error, String logout, Model model) {
		log.info("!!! ERROR :" + error);
		log.info("!!! LOGOUT : " + logout);
		
		if(error != null)
		{
			model.addAttribute("error", "아이디 또는 비밀번호가 맞지 않습니다!");
		}
		if(logout != null)
		{
			model.addAttribute("logout", "로그아웃 완료!");
		}
	}
	
	// 로그아웃처리 겟
	@GetMapping("/customLogout")
	public void logoutGET() {
		log.info("custom logout");
	}
	
	// 로그아웃 처리 포스트
	@PostMapping("/customLogout")
	public void logoutPOST() {}
	
	// 회원가입 화면
	@RequestMapping(value = "/signup", method = RequestMethod.GET)
	public void signup(Model model) {
		log.info("!!! SIGN UP !!!");
	}
	
	// 회원가입 처리
	@RequestMapping(value = "/signup", method = RequestMethod.POST)
	public String signup(UsersVO user, RedirectAttributes rttr) {
		log.info("!!! SIGN UP !!!" + user);
		log.info("date :" + user.getBirth());
		System.out.println(user.getId());
		// 비밀번호 인코딩
		String encodedPw = pwencoder.encode(user.getPw());
		user.setPw(encodedPw);
		
		AuthVO auth = new AuthVO();
		auth.setId(user.getId());
		auth.setAuth("ROLE_MEMBER");
		log.info("auth id :" + auth.getId());
		log.info("auth id :" + auth.getAuth());
		// 순서 주의! USERS 테이블에 먼저 INSERT
		usersService.insertUser(user);
		usersService.insertAuth(auth);
		
		return "successSignup";
		/* return "redirect:successSignup"; */
	}
	
	// 회원가입 처리화면
		@RequestMapping(value = "/successSignup", method = RequestMethod.GET)
		public void successSignup(Model model) {
			log.info("!!! SIGN UP SuccessPage !!!");
		}
	
	// FAQ 화면
	@RequestMapping(value = "/FAQ", method = RequestMethod.GET)
	public void FAQ(@RequestParam(value="keyword", required=false) String keyword, Model model) {
		log.info("!!! FAQ !!!");
		
		log.info("!!! KEYWORD !!!" + keyword);
		
		FAQVO FAQ = new FAQVO();
		FAQ.setKeyword(keyword);
		
		model.addAttribute("FAQ", FAQService.getList(FAQ));
	}
	
}
