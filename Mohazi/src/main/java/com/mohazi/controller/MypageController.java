package com.mohazi.controller;

import java.security.Principal;
import java.util.List;

import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.mohazi.domain.BoardAttachVO;
import com.mohazi.domain.Criteria;
import com.mohazi.domain.PageDTO;
import com.mohazi.domain.UsersVO;
import com.mohazi.service.MyPageService;
import com.mohazi.service.UsersService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@AllArgsConstructor
@RequestMapping("/mypage/*")
public class MypageController {

	private UsersService userService;
	private MyPageService myPageService; // myPage 리스트값
	
	// 내 모임 화면
	@RequestMapping(value = "/myMeeting", method = RequestMethod.GET)
	public void myMeeting(Principal principal, Criteria cri,Model model) {
		char type = 'M';  // type을 M 타입으로 지정
		
    
		cri.setAmount(7); // 페이지당 출력할 게시글 수
		
		cri.setType(type); // type을 fixed
		cri.setId(principal.getName()); // id값을 로그인 아이디로
		log.info("list : "+ cri); 
		model.addAttribute("list", myPageService.getList(cri)); // 게시글들을 list에 담는다.

		int total=myPageService.getTotal(cri);
		log.info("total : "+total);
		model.addAttribute("pageMaker", new PageDTO(cri, total));
	}
	
	// 내 클래스 화면
	@RequestMapping(value = "/myClass", method = RequestMethod.GET)
	public void myClass(Principal principal, Criteria cri,Model model) {
		char type = 'C';		// type을 C 타입으로 지정
		 

		cri.setAmount(7); // 페이지당 출력할 게시글 수
		cri.setType(type);
		cri.setId(principal.getName());
		log.info("list : "+ cri); 
		model.addAttribute("list", myPageService.getList(cri)); // 게시글들을 list에 담는다.

		int total=myPageService.getTotal(cri);
		log.info("total : "+total);
		model.addAttribute("pageMaker", new PageDTO(cri, total));
	}
	
//  REMOVE
	@PreAuthorize("principal.username == #writer")
   @RequestMapping(value="/remove", method= {RequestMethod.POST,RequestMethod.GET})
   public String remove(@RequestParam("p_no") Long p_no, @ModelAttribute("cri") Criteria cri, RedirectAttributes rttr, String writer) {
      log.info("myPage remove..." + p_no);
   
    //  List<BoardAttachVO> attachList = myPageService.getAttachList(p_no);
      log.info("작성자 : " + writer);
      if(myPageService.remove(p_no)) {
    	  
    	  // delete Attach Files
    	//  deleteFiles(attachList);
    	  
         rttr.addFlashAttribute("result", "success");
      }
      
      return "redirect:/mypage/list"+cri.getListLink();
   }
	
	// 내정보 변경 화면
	@RequestMapping(value = "/myInfo", method = RequestMethod.GET)
	public void myInfo(@ModelAttribute("users") UsersVO users,Model model) {
		log.info("/myInfo");
		model.addAttribute("users",userService.read(users.getId()));
	}
}
