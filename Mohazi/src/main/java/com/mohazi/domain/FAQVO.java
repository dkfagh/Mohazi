package com.mohazi.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class FAQVO {
	private Long f_no;			// FAQ 글번호
	private String title;		// FAQ 글제목
	private String content;		// FAQ 설명글
	private String category;	// FAQ 카테고리
	
	private String keyword;     // FAQ 검색어
}
