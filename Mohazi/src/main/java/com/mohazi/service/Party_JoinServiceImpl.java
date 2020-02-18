package com.mohazi.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mohazi.domain.Party_JoinVO;
import com.mohazi.mapper.Party_JoinMapper;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
public class Party_JoinServiceImpl implements Party_JoinService{
	@Setter(onMethod_=@Autowired)
	private Party_JoinMapper mapper;
	@Override
	public int register(Party_JoinVO vo) {
		log.info("register............"+vo);
		
		return mapper.insert(vo);
	}

	@Override
	public Party_JoinVO get(Long pj_no) {
		log.info("get.............."+pj_no);
		
		return mapper.read(pj_no);
	}

	@Override
	public int modify(Party_JoinVO vo) {
		log.info("modify............"+vo);
		return mapper.update(vo);
	}

	@Override
	public int remove(Long pj_no) {
		log.info("remove............"+pj_no);
		return mapper.delete(pj_no);
	}
	
	@Override
	public List<Party_JoinVO> getList(Long p_no) {
		log.info("get Schedule LIst............"+p_no);
		return mapper.getList(p_no);
	}
	
	@Override
	public int count(Long p_no) {
		log.info("!!! GET TOTAL COUNT OF PARTICIPANTS !!!" + p_no);
		return mapper.count(p_no);
	}

}
