package com.mohazi.controller;

import java.util.List;

import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.mohazi.domain.Party_JoinVO;
import com.mohazi.service.Party_JoinService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@RequestMapping("/partys_join/")
@RestController
@Log4j
@AllArgsConstructor
public class Party_JoinController {

	private Party_JoinService service;
	
	@PostMapping(value="/new", consumes = "application/json", produces = {MediaType.TEXT_PLAIN_VALUE})
	public ResponseEntity<String> create(@RequestBody Party_JoinVO vo){
		
		log.info("Party_JoinVO: " +vo);
		int insertCount = service.register(vo);
		
		log.info("Party_Join INSERT COUNT: " + insertCount);
		
		return insertCount ==1
				? new ResponseEntity<>("success", HttpStatus.OK)
				: new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
	}
	
	@GetMapping(value="/list/{p_no}",
			produces= { MediaType.APPLICATION_XML_VALUE, MediaType.APPLICATION_JSON_UTF8_VALUE})
	public ResponseEntity<List<Party_JoinVO>> getList(@PathVariable("p_no") Long p_no){
		
		log.info("getList: " + p_no);		
		return new ResponseEntity<>(service.getList(p_no), HttpStatus.OK);
	}
	
	@GetMapping(value="/get/{pj_no}",
			produces= { MediaType.APPLICATION_XML_VALUE, MediaType.APPLICATION_JSON_UTF8_VALUE})
	public ResponseEntity<Party_JoinVO> get(@PathVariable("pj_no") Long pj_no){
		
		log.info("get: " + pj_no);		
		return new ResponseEntity<>(service.get(pj_no), HttpStatus.OK);
	}
	
	// 해당 모임에 등록된 인원 수 구하기
	@GetMapping(value="/count/{p_no}", produces= {MediaType.APPLICATION_JSON_UTF8_VALUE})
	public ResponseEntity<Integer> participantsCount(@PathVariable("p_no") Long p_no){
		log.info("!!! GET TOTAL PARTICIPANTS OF " + p_no);
		return new ResponseEntity<>(service.count(p_no), HttpStatus.OK);
	}
	
	@DeleteMapping(value="/{pj_no}",
			produces= { MediaType.APPLICATION_XML_VALUE, MediaType.APPLICATION_JSON_UTF8_VALUE})
	public ResponseEntity<String> remove(@PathVariable("pj_no") Long pj_no){
		
		log.info("remove: " + pj_no);		
		return service.remove(pj_no) == 1
			? new ResponseEntity<>("success", HttpStatus.OK)
			: new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
		
	}
	@RequestMapping(method = {RequestMethod.PUT, RequestMethod.PATCH},
			value="/{pj_no}",
			consumes = "application/json",
			produces = {MediaType.TEXT_PLAIN_VALUE})
	public ResponseEntity<String> modify(
			@RequestBody Party_JoinVO vo,
			@PathVariable("pj_no") Long pj_no){
		vo.setPj_no(pj_no);
		log.info("pj_no: " + pj_no);
		log.info("modify: " + vo);
		return service.modify(vo)==1
				? new ResponseEntity<>("success", HttpStatus.OK)
				: new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
	}
			

}

