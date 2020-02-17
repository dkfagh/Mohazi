package com.mohazi.service;

import java.util.List;

import com.mohazi.domain.QNAVO;

public interface QNAService {
	
	public int register(QNAVO vo);
	
	public int removeQuestion(Long q_no);
	
	public int modifyQuestion(QNAVO vo);
		
	public int registerAnswer(QNAVO vo);
	
	public int modifyAnswer(QNAVO vo);
	
	public int removeAnswer(Long q_no);
	
	public List<QNAVO> getList(Long p_no);
}
