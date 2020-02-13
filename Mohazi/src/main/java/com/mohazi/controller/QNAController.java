package com.mohazi.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.mohazi.service.QNAService;
import com.mohazi.service.ReviewService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@RestController
@Log4j
@RequestMapping("/qna/")
@AllArgsConstructor
public class QNAController {

	private QNAService service;
}
