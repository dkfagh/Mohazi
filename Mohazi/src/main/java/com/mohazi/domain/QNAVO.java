package com.mohazi.domain;

import java.util.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@ToString
public class QNAVO {

	private Long q_no;
	private String id;
	private Long p_no;
	private String question;
	private String answer;
	private Date q_regdate;
	private Date a_regdate;
	
	private String nickname;
}
