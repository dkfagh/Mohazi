package com.mohazi.domain;

import java.util.Date;
import java.util.List;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class PartyVO {
	private Long p_no;
	private char type;
	private String title;
	private String id;
	private String cat_main;
	private String cat_sub;
	private String content;
	private String region;
	private Date regDate;
	private String tag;
	private String photo;
	private Long price;
	
	private List<String> categoryArr;
	private List<String> regionArr;
}
