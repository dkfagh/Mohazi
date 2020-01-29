package com.mohazi.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

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
	public void list(@RequestParam(value="type", required=false) char type, @RequestParam(value="categoryArr", required=false) List<String> categoryArr, @RequestParam(value="regionArr", required=false) List<String> regionArr, Model model) {
		log.info("!!!  LIST !!!");

		log.info("!!! CATEGORY !!!" + categoryArr);
		log.info("!!! REGION !!!" + regionArr);

		PartyVO party = new PartyVO();
		party.setType(type);
		party.setCategoryArr(categoryArr);
		party.setRegionArr(regionArr);

		model.addAttribute("list", service.getList(party));
	}

	// 등록 화면
	@RequestMapping(value = "/register", method = RequestMethod.GET) 
	public void register(Model model) {}
	
	// 등록 처리
	@RequestMapping(value = "/register", method = RequestMethod.POST) 
	public String register(PartyVO party, RedirectAttributes rttr) {
		log.info("!!!! REGISTER : " + party);

		service.register(party); 

		//rttr.addFlashAttribute("result", party.getP_no());
		String url = "redirect:/board/list?type=" + party.getType();
		return url;
	}
	
	// 상세보기 화면
	@RequestMapping(value = "/get", method = RequestMethod.GET)
	public void get(@RequestParam("p_no") Long p_no, Model model) {
		log.info("!!! GET !!!");

		model.addAttribute("party", service.get(p_no));
	}

	// 수정 화면
	@RequestMapping(value = "/modify", method = RequestMethod.GET)
	public void modify(@RequestParam("p_no") Long p_no, Model model) {
		log.info("!!! MODIFY PAGE !!!");

		model.addAttribute("party", service.get(p_no));
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

}
