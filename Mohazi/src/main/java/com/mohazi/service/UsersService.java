package com.mohazi.service;

import com.mohazi.domain.AuthVO;
import com.mohazi.domain.UsersVO;

public interface UsersService {
	public void insertUser(UsersVO user);
	public void insertAuth(AuthVO auth);
}
