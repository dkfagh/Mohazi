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

import com.mohazi.domain.Schedule_JoinVO;
import com.mohazi.service.Schedule_JoinService;

import lombok.extern.log4j.Log4j;

@RequestMapping("/schedules_join/")
@RestController
@Log4j
public class Schedule_JoinController {
	
	private Schedule_JoinService service;
	
	@PostMapping(value="/new", consumes = "application/json", produces = {MediaType.TEXT_PLAIN_VALUE})
	public ResponseEntity<String> create(@RequestBody Schedule_JoinVO vo){
		
		log.info("Schedule_JoinVO: " +vo);
		int insertCount = service.register(vo);
		
		log.info("Schedule_Join INSERT COUNT: " + insertCount);
		
		return insertCount ==1
				? new ResponseEntity<>("success", HttpStatus.OK)
				: new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
	}
	
	@GetMapping(value="/list/{s_no}",
			produces= { MediaType.APPLICATION_XML_VALUE, MediaType.APPLICATION_JSON_UTF8_VALUE})
	public ResponseEntity<List<Schedule_JoinVO>> getList(@PathVariable("s_no") Long s_no){
		
		log.info("getList: " + s_no);		
		return new ResponseEntity<>(service.getList(s_no), HttpStatus.OK);
	}
	
	@GetMapping(value="/get/{sj_no}",
			produces= { MediaType.APPLICATION_XML_VALUE, MediaType.APPLICATION_JSON_UTF8_VALUE})
	public ResponseEntity<Schedule_JoinVO> get(@PathVariable("sj_no") Long sj_no){
		
		log.info("get: " + sj_no);		
		return new ResponseEntity<>(service.get(sj_no), HttpStatus.OK);
	}
	
	@DeleteMapping(value="/{sj_no}",
			produces= { MediaType.APPLICATION_XML_VALUE, MediaType.APPLICATION_JSON_UTF8_VALUE})
	public ResponseEntity<String> remove(@PathVariable("sj_no") Long sj_no){
		
		log.info("remove: " + sj_no);		
		return service.remove(sj_no) == 1
			? new ResponseEntity<>("success", HttpStatus.OK)
			: new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
		
	}
	@RequestMapping(method = {RequestMethod.PUT, RequestMethod.PATCH},
			value="/{sj_no}",
			consumes = "application/json",
			produces = {MediaType.TEXT_PLAIN_VALUE})
	public ResponseEntity<String> modify(
			@RequestBody Schedule_JoinVO vo,
			@PathVariable("sj_no") Long sj_no){
		vo.setSj_no(sj_no);
		log.info("sj_no: " + sj_no);
		log.info("modify: " + vo);
		return service.modify(vo)==1
				? new ResponseEntity<>("success", HttpStatus.OK)
				: new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
	}
			

}
