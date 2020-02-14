package com.mohazi.service;

import java.util.List;

import com.mohazi.domain.ReviewVO;

public interface ReviewService {

	public int register(ReviewVO vo);
		
	public int remove(Long r_no);
	
	public int modify(ReviewVO vo);
	
	public List<ReviewVO> getList(Long p_no);
}
