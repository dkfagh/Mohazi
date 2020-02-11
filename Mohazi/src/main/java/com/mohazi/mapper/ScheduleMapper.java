package com.mohazi.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.mohazi.domain.ScheduleVO;

public interface ScheduleMapper {

	public int insert(ScheduleVO vo);
	
	public ScheduleVO read(Long s_no);
	
	public int delete (Long s_no);
	
	public int update (ScheduleVO vo);
	
	public List<ScheduleVO> getList(
			@Param("p_no") Long p_no);
}
