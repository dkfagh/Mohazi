package com.mohazi.controller;

import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.mohazi.domain.UsersVO;
import com.mohazi.service.UsersService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@RequestMapping("/users/")
@RestController
@Log4j
@AllArgsConstructor
public class UsersController {

	private UsersService service;
	
	@GetMapping(value="/read/{id}",
			produces= { MediaType.APPLICATION_XML_VALUE, MediaType.APPLICATION_JSON_UTF8_VALUE})
	public ResponseEntity<UsersVO> read(@PathVariable("id") String id){
		
		log.info("read: " + id);		
		return new ResponseEntity<>(service.read(id), HttpStatus.OK);
	}
			

}

