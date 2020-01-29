package com.mohazi.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import lombok.extern.log4j.Log4j;

@Log4j
@Controller
public class CommonController {
	
	@RequestMapping(value = "/customLogin", method = RequestMethod.GET)
	public void loginInput(String error, String logout, Model model) {
		log.info("!!! ERROR :" + error);
		log.info("!!! LOGOUT : " + logout);
		
		if(error != null)
		{
			model.addAttribute("error", "LOGIN ERROR! CHECK YOUR ACCOUNT!");
		}
		if(logout != null)
		{
			model.addAttribute("logout", "LOGOUT SUCCESS!");
		}
	}
	
	
	
}
