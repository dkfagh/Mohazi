package com.mohazi.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mohazi.domain.QNAVO;
import com.mohazi.mapper.QNAMapper;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
public class QNAServiceImpl implements QNAService {
	
	@Setter(onMethod_ = @Autowired)
	private QNAMapper mapper;

	@Override
	public int register(QNAVO vo) {
		
		log.info("!!! REGISTER !!!" + vo);
		
		return mapper.insert(vo);
	}

	@Override
	public int remove(Long q_no) {
		
		log.info("!!! remove !!!" + q_no);
		
		return mapper.delete(q_no);
	}

	@Override
	public int modifyAnswer(QNAVO vo) {
		
		log.info("!!! modify Answer !!!" + vo);
		
		return mapper.updateAnswer(vo);
	}

	@Override
	public List<QNAVO> getList(Long p_no) {
		
		log.info("!!! get QNA List !!!" + p_no);
		
		return mapper.getList(p_no);
	}


}
