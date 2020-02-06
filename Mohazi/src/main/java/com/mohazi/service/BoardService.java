package com.mohazi.service;

import java.util.List;

import com.mohazi.domain.PartyVO;

public interface BoardService {

	//public List<PartyVO> getList(char type);
	//public List<PartyVO> getList(char type, List<String> categoryArr, List<String> regionArr);
	public List<PartyVO> getList(PartyVO party);
	
	public void register(PartyVO party);
	public PartyVO get(Long p_no);
	public boolean modify(PartyVO party);
	public boolean remove(Long p_no);	
	
	
}
