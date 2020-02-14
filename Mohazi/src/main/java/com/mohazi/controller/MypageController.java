package com.mohazi.controller;

import java.security.Principal;

import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.mohazi.domain.Criteria;
import com.mohazi.domain.PageDTO;
import com.mohazi.domain.Party_JoinVO;
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
		
    
		cri.setAmount(6); // 페이지당 출력할 게시글 수
		
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
		 

		cri.setAmount(6); // 페이지당 출력할 게시글 수
		cri.setType(type);
		cri.setId(principal.getName());
		log.info("list : "+ cri); 
		model.addAttribute("list", myPageService.getList(cri)); // 게시글들을 list에 담는다.

		int total=myPageService.getTotal(cri);
		log.info("total : "+total);
		model.addAttribute("pageMaker", new PageDTO(cri, total));
	}
	
//  Delete -- party_join에 p_no로 엮여있는 아이디 모두 삭제 후 party에서 attach삭제후 party p_no로 삭제

   @GetMapping(value="/delete")
   public String delete(@RequestParam("p_no") Long p_no, @ModelAttribute("cri") Criteria cri, RedirectAttributes rttr) {
      log.info("myPage 삭제버튼 ... 글번호 : " + p_no);
      
      String type ="";
      if(cri.getType() == 'C') {
    	  type="myClass";
      }
      else if(cri.getType() == 'M') {
    	  type="myMeeting";
      }
      
      if(myPageService.delete(p_no)) {
    	  
    	  
    	  log.info(p_no+"번 글 삭제 성공!!!!!!!!!!!!!!!!!!!!!!!!!!");
    	  
         rttr.addFlashAttribute("result", "success");
      }
      
      return "redirect:/mypage/"+type+cri.getListLink();
   }
   
// Delete -- party_join에 p_no로 엮여있는 아이디 모두 삭제 후 party에서 attach삭제후 party p_no로 삭제

  @GetMapping(value="/exit")
  public String exit(@RequestParam("p_no") Long p_no,Principal principal, @ModelAttribute("cri") Criteria cri, RedirectAttributes rttr) {
     log.info("myPage 나가기버튼 exit... 글번호 : " + p_no);
     
     String type ="";
     if(cri.getType() == 'C') {
   	  type="myClass";
     }
     else if(cri.getType() == 'M') {
   	  type="myMeeting";
     }
     Party_JoinVO pj =new Party_JoinVO();
     pj.setId(principal.getName());
     pj.setP_no(p_no);
     log.info(p_no + " : "+principal.getName());
     if(myPageService.exit(pj)) {
   	  
   	  
   	  log.info(p_no+"번 글 나가기 성공!!!!!!!!!!!!!!!!!!!!!!!!!!");
   	  
        rttr.addFlashAttribute("result", "success");
     }
     
     return "redirect:/mypage/"+type+cri.getListLink();
  }
   
 /*  @GetMapping(value="/myClass/{p_no}/{page}",produces= {MediaType.APPLICATION_XML_VALUE,MediaType.APPLICATION_JSON_UTF8_VALUE})
   public ResponseEntity<PageDTO> getList(@PathVariable("page") int page, @PathVariable("p_no") Long p_no){
	   Criteria cri = new Criteria(page,6);
	   
	   log.info("get page List p_no : "+p_no);
	   log.info("cri : "+cri);
	   int total=myPageService.getTotal(cri);
	   return new ResponseEntity<>(myPageService.getListPage(cri,total),HttpStatus.OK);
   }*/
	
	// 내정보 변경 화면
	@RequestMapping(value = "/myInfo", method = RequestMethod.GET)
	public void myInfo(@ModelAttribute("users") UsersVO users,Model model) {
		log.info("/myInfo");
		model.addAttribute("users",userService.read(users.getId()));
	}
}
