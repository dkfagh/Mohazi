package com.mohazi.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.mohazi.domain.Party_JoinVO;

public interface Party_JoinMapper {
public int insert(Party_JoinVO vo);
	
	public Party_JoinVO read(Long pj_no);
	
	public int delete (Long pj_no);
	
	public int update (Party_JoinVO vo);
	
	public List<Party_JoinVO> getList(
			@Param("p_no") Long p_no);
	
	public int count(Long p_no);

}
