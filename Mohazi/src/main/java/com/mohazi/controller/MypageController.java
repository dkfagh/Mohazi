package com.mohazi.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@AllArgsConstructor
@RequestMapping("/mypage/*")
public class MypageController {

	// 내 모임 화면
	@RequestMapping(value = "/myMeeting", method = RequestMethod.GET)
	public void myMeeting() {}
	
	// 내 클래스 화면
	@RequestMapping(value = "/myClass", method = RequestMethod.GET)
	public void myClass() {}
	
	// 내정보 변경 화면
	@RequestMapping(value = "/myInfo", method = RequestMethod.GET)
	public void myInfo() {}
}
