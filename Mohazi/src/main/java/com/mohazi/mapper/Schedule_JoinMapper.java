package com.mohazi.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.mohazi.domain.Schedule_JoinVO;


public interface Schedule_JoinMapper {
	
	public int insert(Schedule_JoinVO vo);
	
	public Schedule_JoinVO read(Long sj_no);
	
	public int delete (Long sj_no);
	
	public int update (Schedule_JoinVO vo);
	
	public List<Schedule_JoinVO> getList(
			@Param("s_no") Long s_no);

}
