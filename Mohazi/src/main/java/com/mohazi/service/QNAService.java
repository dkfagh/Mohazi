package com.mohazi.service;

import java.util.List;

import com.mohazi.domain.QNAVO;

public interface QNAService {
	
	public int register(QNAVO vo);

	public QNAVO get(Long q_no);
	
	public int remove(Long q_no);
		
	public int modifyAnswer(QNAVO vo);
	
	public List<QNAVO> getList(Long p_no);
}
