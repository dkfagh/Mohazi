package com.mohazi.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class Criteria {
   
   private int pageNum;
   private int amount;
   private char type; //클래스, 모임
 
   // private String searchType; //검색  조건
   private String keyword;
   
   private String id;
   
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
}