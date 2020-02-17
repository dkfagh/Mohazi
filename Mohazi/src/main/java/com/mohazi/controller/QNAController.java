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

import com.mohazi.domain.QNAVO;
import com.mohazi.service.QNAService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@RestController
@Log4j
@RequestMapping("/QNA/")
@AllArgsConstructor
public class QNAController {

	private QNAService service;
	
	// QNA 등록
	@RequestMapping(value = "/new", method = RequestMethod.POST, consumes = "application/json", produces = {MediaType.TEXT_PLAIN_VALUE})
	public ResponseEntity<String> create(@RequestBody QNAVO vo) {
		
		log.info("QNAVO : " + vo);
		
		int insertCount = service.register(vo);
		
		log.info("QNA INSERT COUNT : " + insertCount);
		
		return insertCount == 1 ? new ResponseEntity<>("success", HttpStatus.OK) : new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
	}
	
	
	// QNA 목록
	@RequestMapping(value = "/party/{p_no}", method = RequestMethod.GET, produces = {MediaType.APPLICATION_XML_VALUE, MediaType.APPLICATION_JSON_UTF8_VALUE})
	public ResponseEntity<List<QNAVO>> getList(@PathVariable("p_no") Long p_no) {
		
		log.info("get QNA List p_no : " + p_no);
		
		return new ResponseEntity<>(service.getList(p_no), HttpStatus.OK);
	}
	
	
	// QNA answer 등록
	@RequestMapping(value = "/new/{q_no}", method = {RequestMethod.PUT, RequestMethod.PATCH},  consumes = "application/json")
	public ResponseEntity<String> registerAnswer(@RequestBody QNAVO vo, @PathVariable("q_no") Long q_no) {
		
		vo.setQ_no(q_no);
		
		log.info("q_no : " + q_no);
		log.info("register : " + vo);
		
		return service.registerAnswer(vo) == 1 ? new ResponseEntity<>("success", HttpStatus.OK) : new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
	}
	
	
	// QNA 삭제
	@RequestMapping(value = "/{q_no}", method = RequestMethod.DELETE, produces = {MediaType.TEXT_PLAIN_VALUE})
	public ResponseEntity<String> removeQuestion(@PathVariable("q_no") Long q_no) {
		
		log.info("remove : " + q_no);
		
		return service.removeQuestion(q_no) == 1 ? new ResponseEntity<>("success", HttpStatus.OK) : new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
	}
	
	// QNA Question 수정
	@RequestMapping(value = "/modifyQuestion/{q_no}", method = {RequestMethod.PUT, RequestMethod.PATCH},  consumes = "application/json")
	public ResponseEntity<String> modifyQuestion(@RequestBody QNAVO vo, @PathVariable("q_no") Long q_no) {
		
		vo.setQ_no(q_no);
		
		log.info("q_no : " + q_no);
		log.info("modify : " + vo);
		
		return service.modifyQuestion(vo) == 1 ? new ResponseEntity<>("success", HttpStatus.OK) : new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
	}
	
	// QNA Answer 수정
	@RequestMapping(value = "/modifyAnswer/{q_no}", method = {RequestMethod.PUT, RequestMethod.PATCH},  consumes = "application/json")
	public ResponseEntity<String> modifyAnswer(@RequestBody QNAVO vo, @PathVariable("q_no") Long q_no) {
		
		vo.setQ_no(q_no);
		
		log.info("q_no : " + q_no);
		log.info("modify : " + vo);
		
		return service.modifyAnswer(vo) == 1 ? new ResponseEntity<>("success", HttpStatus.OK) : new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
	}
	
	// QNA Answer 삭제
	@RequestMapping(value = "/removeAnswer/{q_no}", method = {RequestMethod.PUT, RequestMethod.PATCH},  consumes = "application/json")
	public ResponseEntity<String> removeAnswer(@PathVariable("q_no") Long q_no) {
				
		log.info("q_no : " + q_no);
		
		return service.removeAnswer(q_no) == 1 ? new ResponseEntity<>("success", HttpStatus.OK) : new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
	}

}
