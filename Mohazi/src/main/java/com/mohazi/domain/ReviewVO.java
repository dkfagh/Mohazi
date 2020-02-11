package com.mohazi.domain;

import java.util.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class ReviewVO {

	private Long r_no;
	private Long p_no;
	private String id;
	private String content;
	private Date regdate;
	
	private String nickname;
}
