package com.mohazi.service;

import com.mohazi.domain.AuthVO;
import com.mohazi.domain.UsersVO;

public interface UsersService {
	public UsersVO read(String id); // user id로 검색
	public void insertUser(UsersVO user); // user 회원가입
	public void insertAuth(AuthVO auth);	// user 권한
	public boolean updateUser(UsersVO user); 	// user 정보 수정 업데이트 실패하면 email이 중복임.
}
