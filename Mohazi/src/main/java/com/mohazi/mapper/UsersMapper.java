package com.mohazi.mapper;

import com.mohazi.domain.AuthVO;
import com.mohazi.domain.UsersVO;

public interface UsersMapper {
	public UsersVO read(String id); // user id로 검색
	public void insertUser(UsersVO user); // 회원가입용
	public void insertAuth(AuthVO auth); // 회원가입시 권한설정 Default 1, 일반회원
}
