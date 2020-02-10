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
	private Long p_no;			// 글번호
	private char type;			// class, 모임 구분타입
	private String title;		// 글제목
	private String id;			// user 아이디
	private String cat_main;	// 카테고리 대분류
	private String cat_sub;		// 카테고리 소분류
	private String content;		// 상세글
	private Date regDate;		// 게시글 날짜
	private String tag;			// 해쉬태그
	private String photo;		// 사진
	private Long price;			// 가격
	private float coord_x;		// 좌표 x
	private float coord_y;		// 좌표 y
	private String address;		// 주소
	
	private List<String> categoryArr;
	private List<String> regionArr;
	
	//첨부파일목록
	private List<BoardAttachVO> attachList;
	
}
