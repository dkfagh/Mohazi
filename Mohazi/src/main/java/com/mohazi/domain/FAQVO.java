package com.mohazi.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class FAQVO {
	private Long f_no;
	private String title;
	private String content;
	private String category;
}
