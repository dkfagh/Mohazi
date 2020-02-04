package com.mohazi.domain;

import java.util.Date;
import java.util.List;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class UsersVO {
	private String id;				// user id
	private String pw;				// user 비밀번호
	private String email;			// 이메일
	private String name;			// user 이름
	private String nickname;		// 닉네임
	private String phone;			// 핸드폰번호
	private Date birth;				// 생년월일
	private boolean enabled;		// 계정 비활성화 0, 계정 활성화 1, default 1
	
	private List<AuthVO> authList;  // 게시글 권한 설정
}
