package com.mohazi.controller;

import java.util.List;

import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.mohazi.domain.ReviewVO;
import com.mohazi.service.ReviewService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@RestController
@Log4j
@RequestMapping("/review/")
@AllArgsConstructor
public class ReviewController {

	private ReviewService service;
	
	
	// Review 등록
	@RequestMapping(value = "/new", method = RequestMethod.POST, consumes = "application/json", produces = {MediaType.TEXT_PLAIN_VALUE})
	public ResponseEntity<String> create(@RequestBody ReviewVO vo) {
		
		log.info("ReviewVO : " + vo);
		
		int insertCount = service.register(vo);
		
		log.info("Review INSERT COUNT : " + insertCount);
		
		return insertCount == 1 ? new ResponseEntity<>("success", HttpStatus.OK) : new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
	}
	
	
	// Review 목록
	@RequestMapping(value = "/party/{p_no}", method = RequestMethod.GET, produces = {MediaType.APPLICATION_XML_VALUE, MediaType.APPLICATION_JSON_UTF8_VALUE})
	public ResponseEntity<List<ReviewVO>> getList(@PathVariable("p_no") Long p_no) {
		
		log.info("get Review List p_no : " + p_no);
		
		return new ResponseEntity<>(service.getList(p_no), HttpStatus.OK);
	}
	
	
	// Review 상세보기
	@RequestMapping(value = "/{r_no}", method = RequestMethod.GET, produces = {MediaType.APPLICATION_XML_VALUE, MediaType.APPLICATION_JSON_UTF8_VALUE})
	public ResponseEntity<ReviewVO> get(@PathVariable("r_no") Long r_no) {
		
		log.info("get : " + r_no);
		
		return new ResponseEntity<>(service.get(r_no), HttpStatus.OK);
	}
	
	
	// Review 수정
	@RequestMapping(value = "/{r_no}", method = {RequestMethod.PUT, RequestMethod.PATCH},  consumes = "application/json")
	public ResponseEntity<String> modify(@RequestBody ReviewVO vo, @PathVariable("r_no") Long r_no) {
		
		vo.setR_no(r_no);
		
		log.info("r_no : " + r_no);
		log.info("modify : " + vo);
		
		return service.modify(vo) == 1 ? new ResponseEntity<>("success", HttpStatus.OK) : new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
	}
	
	
	// Review 삭제
	@RequestMapping(value = "/{r_no}", method = RequestMethod.DELETE, produces = {MediaType.TEXT_PLAIN_VALUE})
	public ResponseEntity<String> remove(@PathVariable("r_no") Long r_no) {
		
		log.info("remove : " + r_no);
		
		return service.remove(r_no) == 1 ? new ResponseEntity<>("success", HttpStatus.OK) : new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
	}
}
