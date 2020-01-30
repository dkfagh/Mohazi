package com.mohazi.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mohazi.domain.AuthVO;
import com.mohazi.domain.UsersVO;
import com.mohazi.mapper.UsersMapper;

import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
public class UsersServiceImpl implements UsersService{

	@Setter(onMethod_ = @Autowired)
	private UsersMapper mapper;
	
	@Override
	public void insertUser(UsersVO user) {
		log.info("!!! INSERT USERS !!!" + user);
		mapper.insertUser(user);
	}

	@Override
	public void insertAuth(AuthVO auth) {
		log.info("!!! INSERT AUTH !!!" + auth);
		mapper.insertAuth(auth);
	}

}
