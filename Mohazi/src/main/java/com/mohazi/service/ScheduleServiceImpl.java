package com.mohazi.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mohazi.domain.ScheduleVO;
import com.mohazi.mapper.ScheduleMapper;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
public class ScheduleServiceImpl implements ScheduleService{
	@Setter(onMethod_=@Autowired)
	private ScheduleMapper mapper;

	@Override
	public int register(ScheduleVO vo) {
		log.info("register............"+vo);
		
		return mapper.insert(vo);
	}

	@Override
	public ScheduleVO get(Long s_no) {
		log.info("get.............."+s_no);
		
		return mapper.read(s_no);
	}

	@Override
	public int modify(ScheduleVO vo) {
		log.info("modify............"+vo);
		return mapper.update(vo);
	}

	@Override
	public int remove(Long s_no) {
		log.info("remove............"+s_no);
		return mapper.delete(s_no);
	}
	
	@Override
	public List<ScheduleVO> getList(Long p_no) {
		log.info("get Schedule LIst............"+p_no);
		return mapper.getList(p_no);
	}

}
