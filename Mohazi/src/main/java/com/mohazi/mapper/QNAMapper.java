package com.mohazi.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.mohazi.domain.QNAVO;

public interface QNAMapper {

	public int insert(QNAVO vo);
	
	public int deleteQuestion(Long q_no);
	
	public int updateQuestion(QNAVO vo);
		
	public int insertAnswer(QNAVO vo);
	
	public int updateAnswer(QNAVO vo);
	
	public int deleteAnswer(Long q_no);
	
	public List<QNAVO> getList(@Param("p_no") Long p_no);
}
