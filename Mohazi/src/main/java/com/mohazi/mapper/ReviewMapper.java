package com.mohazi.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.mohazi.domain.ReviewVO;

public interface ReviewMapper {

	public int insert(ReviewVO vo);
		
	public int delete(Long r_no);
	
	public int update(ReviewVO vo);
	
	public List<ReviewVO> getList(@Param("p_no") Long p_no);
 }
 