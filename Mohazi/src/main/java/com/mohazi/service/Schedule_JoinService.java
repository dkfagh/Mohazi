package com.mohazi.service;

import java.util.List;

import com.mohazi.domain.Schedule_JoinVO;

public interface Schedule_JoinService {
	
public int register(Schedule_JoinVO vo);
	
	public Schedule_JoinVO get(Long sj_no);
	
	public int modify(Schedule_JoinVO vo);
	
	public int remove(Long sj_no);
	
	public List<Schedule_JoinVO> getList(Long s_no);
	
	public int participantsCount(Long s_no);

}
