package com.mohazi.service;

import java.util.List;

import com.mohazi.domain.Party_JoinVO;

public interface Party_JoinService {
	
public int register(Party_JoinVO vo);
	
	public Party_JoinVO get(Long pj_no);
	
	public int modify(Party_JoinVO vo);
	
	public int remove(Long pj_no);
	
	public List<Party_JoinVO> getList(Long p_no);
	

}
