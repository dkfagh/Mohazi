package com.mohazi.domain;

import lombok.Getter;
import lombok.ToString;

@Getter
@ToString
public class PageDTO {
	
	private int startPage;
	private int endPage;
	private boolean prev, next;
	
	private int total;
	private Criteria cri;
	
	public PageDTO(Criteria cri, int total) {
		
		this.cri=cri;
		this.total=total;
		
		this.endPage=(int) (Math.ceil(cri.getPageNum() / 20.0)) * 20;
		
		this.startPage=this.endPage - 19;
		
		int realEnd = (int) (Math.ceil((total * 1.0) / cri.getAmount()));
		
		if(realEnd<this.endPage) {
			this.endPage=realEnd;
		}
		
		this.prev=this.startPage > 1;
		this.next=this.endPage < realEnd;
	}
}
