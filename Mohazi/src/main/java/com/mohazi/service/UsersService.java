package com.mohazi.service;

import com.mohazi.domain.AuthVO;
import com.mohazi.domain.UsersVO;

public interface UsersService {
	public UsersVO read(String id); // user id로 검색
	public void insertUser(UsersVO user);
	public void insertAuth(AuthVO auth);
}
