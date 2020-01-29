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
	private String id;
	private String pw;
	private String email;
	private String name;
	private String nickname;
	private String phone;
	private Date birth;
	private boolean enabled;
	
	private List<AuthVO> authList;
}
