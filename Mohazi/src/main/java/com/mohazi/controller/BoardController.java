package com.mohazi.controller;

import java.util.List;

import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.mohazi.domain.BoardAttachVO;
import com.mohazi.domain.Criteria;
import com.mohazi.domain.PageDTO;
import com.mohazi.domain.PartyVO;
import com.mohazi.service.BoardService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@RequestMapping("/board/*")
@AllArgsConstructor
public class BoardController {
   private BoardService service;


   @RequestMapping(value = "/list", method = RequestMethod.GET)
   public void list(@RequestParam(value="type", required=false) char type, @RequestParam(value="category", required=false) List<String> categoryArr, @RequestParam(value="region", required=false) List<String> regionArr,
		   @RequestParam(value="startDate", required=false) String startDate,@RequestParam(value="endDate", required=false) String endDate,
		   Model model, Criteria cri) {
      //log.info("!!!  LIST !!!");
      //log.info("!!! CATEGORY !!!" + categoryArr);
      //log.info("!!! REGION !!!" + regionArr);
      
	  cri.setCategoryArr(categoryArr);
	  cri.setRegionArr(regionArr);
	  cri.setStartDate(startDate);
	  cri.setEndDate(endDate);
	  cri.setType(type);

      model.addAttribute("list", service.getList(cri));
      
      int total=service.getTotal(cri);
      log.info("total : "+total);
      model.addAttribute("pageMaker",new PageDTO(cri,total));
   }

   // 검색 결과 페이지
	
	 @RequestMapping(value = "/searchResult", method = RequestMethod.GET) 
	 public void searchResult(Model model, Criteria cri) {
	  
	 int total=service.searchTotal(cri);
	 
	 model.addAttribute("search",service.getSearch(cri));
	 
	 log.info("total : "+total);
	 model.addAttribute("pageMaker",new PageDTO(cri,total)); 
	 
	 }
	
   // 등록 화면
   @RequestMapping(value = "/register", method = RequestMethod.GET) 
   public void register(Model model, Criteria cri) {
	   
	   int total=service.getTotal(cri);
	   model.addAttribute("pageMaker",new PageDTO(cri,total));
   }
   
   // 등록 처리
   @RequestMapping(value = "/register", method = RequestMethod.POST) 
   public String register(PartyVO party, RedirectAttributes rttr) {
	   
	  log.info("=========================="); 
      log.info("!!!! REGISTER : " + party);

  	if (party.getAttachList() != null) {

		party.getAttachList().forEach(attach -> log.info(attach));

	}
  	log.info("==========================");
  	
      service.register(party); 

      //rttr.addFlashAttribute("result", party.getP_no());
      String url = "redirect:/board/list?type=" + party.getType();
      return url;
   }

   // 상세보기 화면
   @RequestMapping(value = "/get", method = RequestMethod.GET)
   public void get(@RequestParam("p_no") Long p_no, Model model, Criteria cri) {
      log.info("!!! GET !!!");


      model.addAttribute("party", service.get(p_no));
      
      int total=service.getTotal(cri);
	  model.addAttribute("pageMaker",new PageDTO(cri,total));
   }


   // 수정 화면
   @RequestMapping(value = "/modify", method = RequestMethod.GET)
   public void modify(@RequestParam("p_no") Long p_no, Model model, Criteria cri) {
      log.info("!!! MODIFY PAGE !!!");

      model.addAttribute("party", service.get(p_no));
      
      int total=service.getTotal(cri);
   	  model.addAttribute("pageMaker",new PageDTO(cri,total));
   }

   // 수정 처리
   @RequestMapping(value = "/modify", method = RequestMethod.POST)
   public String modify(PartyVO party, RedirectAttributes rttr) {
      log.info("!!! MODIFY !!!");

      if(service.modify(party) == true) {
         rttr.addFlashAttribute("result", "modify");
      }

      String url = "redirect:/board/list?type=" + party.getType();
      return url;
   }

   // 삭제 처리
   @RequestMapping(value = "/remove", method = RequestMethod.POST)
   public String remove(@RequestParam("p_no") Long p_no, RedirectAttributes rttr) {
      log.info("!!! REMOVE !!!");

      if(service.remove(p_no) == true) {
         rttr.addFlashAttribute("result", "remove");
      }

      String url = "redirect:/board/list?type=" + service.get(p_no).getType();
      return url;
   }
   
   //첨부이미지 리스트출력
  @GetMapping(value="/getAttachList", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
  	@ResponseBody
  	public ResponseEntity<List<BoardAttachVO>> getAttachList(Long p_no){
	  log.info("getAttachList" + p_no);
	  return new ResponseEntity<>(service.getAttachList(p_no), HttpStatus.OK);
  }
}