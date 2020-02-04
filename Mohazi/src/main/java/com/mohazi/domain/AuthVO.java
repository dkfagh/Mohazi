package com.mohazi.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class AuthVO {
	private String id; // user 아이디
	private String auth; // 권한 설정
}
