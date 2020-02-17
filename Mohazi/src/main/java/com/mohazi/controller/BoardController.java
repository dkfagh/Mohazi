package com.mohazi.controller;

import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.security.Principal;
import java.util.List;

import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
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
   @PreAuthorize("isAuthenticated()")
   @RequestMapping(value = "/register", method = RequestMethod.GET) 
   public void register(Model model) {
	   
   }
   
   // 등록 처리
   @PreAuthorize("isAuthenticated()")
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
   public void get(@RequestParam("p_no") Long p_no, @ModelAttribute("cri") Criteria cri, Model model) {
      log.info("!!! GET !!!");
      
      model.addAttribute("party", service.get(p_no));
      
   }


   // 수정 화면
   @RequestMapping(value = "/modify", method = RequestMethod.GET)
   public void modify(@RequestParam("p_no") Long p_no, @ModelAttribute("cri") Criteria cri, Model model) {
      log.info("!!! MODIFY PAGE !!!");

      model.addAttribute("party", service.get(p_no));
      
   }

   // 수정 처리
   @RequestMapping(value = "/modify", method = RequestMethod.POST)
   public String modify(PartyVO party, @ModelAttribute("cri") Criteria cri, RedirectAttributes rttr) {
      log.info("!!! MODIFY !!!"+party);

      if(service.modify(party) == true) {
         rttr.addFlashAttribute("result", "success");
      }
      
        rttr.addAttribute("pageNum", cri.getPageNum());
		rttr.addAttribute("amount", cri.getAmount());
		rttr.addAttribute("type", cri.getType());
		rttr.addAttribute("keyword", cri.getKeyword());
		
      String url = "redirect:/board/list?type=" + party.getType();
      return url;
   }

   // 삭제 처리
   @RequestMapping(value = "/remove", method = RequestMethod.POST)
   public String remove(@RequestParam("p_no") Long p_no, @ModelAttribute("cri") Criteria cri, RedirectAttributes rttr) {
      log.info("!!! REMOVE !!!"+p_no);
  
      List<BoardAttachVO> attachList = service.getAttachList(p_no);
      char type= service.get(p_no).getType();
      if(service.remove(p_no) == true) {

		// delete Attach Files
		deleteFiles(attachList);
    	  
         rttr.addFlashAttribute("result", "success");
      }
      	rttr.addAttribute("pageNum", cri.getPageNum());
		rttr.addAttribute("amount", cri.getAmount());

      String url = "redirect:/board/list?type=" + type;
      return url;
   }
   
   //첨부이미지 리스트출력
  @GetMapping(value="/getAttachList", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
  	@ResponseBody
  	public ResponseEntity<List<BoardAttachVO>> getAttachList(Long p_no){
	  log.info("getAttachList" + p_no);
	  return new ResponseEntity<>(service.getAttachList(p_no), HttpStatus.OK);
  }
  
  
  private void deleteFiles(List<BoardAttachVO> attachList) {
	    
	    if(attachList == null || attachList.size() == 0) {
	      return;
	    }
	    
	    log.info("delete attach files...................");
	    log.info(attachList);
	    
	    attachList.forEach(attach -> {
	      try {        
	        Path file  = Paths.get("C:\\upload\\"+attach.getUploadPath()+"\\" + attach.getUuid()+"_"+ attach.getFileName());
	        
	        Files.deleteIfExists(file);
	        
	        if(Files.probeContentType(file).startsWith("image")) {
	        
	          Path thumbNail = Paths.get("C:\\upload\\"+attach.getUploadPath()+"\\s_" + attach.getUuid()+"_"+ attach.getFileName());
	          
	          Files.delete(thumbNail);
	        }
	
	      }catch(Exception e) {
	        log.error("delete file error" + e.getMessage());
	      }//end catch
	    });//end foreachd
	  }

  
  
  
  
  
}