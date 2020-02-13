package com.mohazi.domain;

import java.util.List;

import org.springframework.web.util.UriComponentsBuilder;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class Criteria {
   
   private int pageNum; // 페이지 수
   private int amount; // 보여줄 글 개수
   private char type; //클래스, 모임
 
   // private String searchType; //검색  조건
   private String keyword;  // 검색조건
   
   private String id;  // myPage용

   private List<String> categoryArr;
   private List<String> regionArr;
   private String startDate;
   private String endDate;

   // List용
   public Criteria() {
      this(1,16);
   }
   
   public Criteria(int pageNum, int amount) {
      this.pageNum=pageNum;
      this.amount=amount;
   }
   
	/*
	 * public String[] getTypeArr() {
	 * 
	 * return searchType == null? new String[] {}: searchType.split(""); }
	 */
  
   public String getListLink() {
		  
		  UriComponentsBuilder builder =UriComponentsBuilder.fromPath("")
				  .queryParam("pageNum", this.pageNum)
				  .queryParam("amount", this.getAmount())
				  .queryParam("type", this.getType())
		  		  .queryParam("keyword", this.getKeyword());
				  
		  
		  return builder.toUriString();
	  }
	
}