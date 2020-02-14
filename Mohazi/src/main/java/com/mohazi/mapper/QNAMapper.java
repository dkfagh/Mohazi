package com.mohazi.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.mohazi.domain.QNAVO;

public interface QNAMapper {

	public int insert(QNAVO vo);
	
	public QNAVO read(Long q_no);
	
	public int delete(Long q_no);
		
	public int updateAnswer(QNAVO vo);
	
	public List<QNAVO> getList(@Param("p_no") Long p_no);
}
