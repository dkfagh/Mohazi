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

import com.mohazi.domain.ScheduleVO;
import com.mohazi.service.ScheduleService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@RequestMapping("/schedules/")
@RestController
@Log4j
@AllArgsConstructor
public class ScheduleController {
	
	private ScheduleService service;
	
	@PostMapping(value="/new", consumes = "application/json", produces = {MediaType.TEXT_PLAIN_VALUE})
	public ResponseEntity<String> create(@RequestBody ScheduleVO vo){
		
		log.info("ScheduleVO: " +vo);
		int insertCount = service.register(vo);
		
		log.info("Schedule INSERT COUNT: " + insertCount);
		
		return insertCount ==1
				? new ResponseEntity<>("success", HttpStatus.OK)
				: new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
	}
	
	@GetMapping(value="/{p_no}",
			produces= { MediaType.APPLICATION_XML_VALUE, MediaType.APPLICATION_JSON_UTF8_VALUE})
	public ResponseEntity<List<ScheduleVO>> getList(@PathVariable("p_no") Long p_no){
		
		log.info("getList: " + p_no);		
		return new ResponseEntity<>(service.getList(p_no), HttpStatus.OK);
	}
	
	@GetMapping(value="/{s_no}",
			produces= { MediaType.APPLICATION_XML_VALUE, MediaType.APPLICATION_JSON_UTF8_VALUE})
	public ResponseEntity<ScheduleVO> get(@PathVariable("s_no") Long s_no){
		
		log.info("get: " + s_no);		
		return new ResponseEntity<>(service.get(s_no), HttpStatus.OK);
	}
	
	@DeleteMapping(value="/{s_no}",
			produces= { MediaType.APPLICATION_XML_VALUE, MediaType.APPLICATION_JSON_UTF8_VALUE})
	public ResponseEntity<String> remove(@PathVariable("s_no") Long s_no){
		
		log.info("remove: " + s_no);		
		return service.remove(s_no) == 1
			? new ResponseEntity<>("success", HttpStatus.OK)
			: new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
		
	}
	@RequestMapping(method = {RequestMethod.PUT, RequestMethod.PATCH},
			value="/{s_no}",
			consumes = "application/json",
			produces = {MediaType.TEXT_PLAIN_VALUE})
	public ResponseEntity<String> modify(
			@RequestBody ScheduleVO vo,
			@PathVariable("s_no") Long s_no){
		vo.setS_no(s_no);
		log.info("s_no: " + s_no);
		log.info("modify: " + vo);
		return service.modify(vo)==1
				? new ResponseEntity<>("success", HttpStatus.OK)
				: new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
	}
			
			
}
