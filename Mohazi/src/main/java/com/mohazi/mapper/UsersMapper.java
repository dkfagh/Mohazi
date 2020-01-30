package com.mohazi.mapper;

import com.mohazi.domain.AuthVO;
import com.mohazi.domain.UsersVO;

public interface UsersMapper {
	public UsersVO read(String id);
	public void insertUser(UsersVO user);
	public void insertAuth(AuthVO auth);
}
