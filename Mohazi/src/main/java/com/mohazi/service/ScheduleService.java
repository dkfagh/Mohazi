package com.mohazi.service;

import java.util.List;

import com.mohazi.domain.ScheduleVO;

public interface ScheduleService {
	
	public int register(ScheduleVO vo);
	
	public ScheduleVO get(Long s_no);
	
	public int modify(ScheduleVO vo);
	
	public int remove(Long s_no);
	
	public List<ScheduleVO> getList(Long p_no);
	

}
