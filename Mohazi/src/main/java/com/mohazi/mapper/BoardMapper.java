package com.mohazi.mapper;

import java.util.List;

import com.mohazi.domain.Criteria;
import com.mohazi.domain.PartyVO;

public interface BoardMapper {
	
	//public List<PartyVO> getList(char type);
	//public List<PartyVO> getList(char type, List<String> categoryArr, List<String> regionArr);
	public List<PartyVO> getList(PartyVO party);
	
	public List<PartyVO> getListWithPaging(Criteria cri);
	
	public void insert(PartyVO party);
	public PartyVO read(Long p_no);
	public int update(PartyVO party);
	public int delete(Long p_no);
}
