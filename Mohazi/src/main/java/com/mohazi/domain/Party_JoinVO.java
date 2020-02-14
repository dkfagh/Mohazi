package com.mohazi.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class Party_JoinVO {
	private Long p_no;			// 글번호
	private String id;			// 참여한 user 아이디
	
}
