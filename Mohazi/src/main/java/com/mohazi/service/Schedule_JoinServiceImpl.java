package com.mohazi.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mohazi.domain.Schedule_JoinVO;
import com.mohazi.mapper.Schedule_JoinMapper;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
public class Schedule_JoinServiceImpl implements Schedule_JoinService {
	@Setter(onMethod_=@Autowired)
	private Schedule_JoinMapper mapper;
	
	@Override
	public int register(Schedule_JoinVO vo) {
		log.info("register............"+vo);
		
		return mapper.insert(vo);
	}

	@Override
	public Schedule_JoinVO get(Long sj_no) {
		log.info("get.............."+sj_no);
		
		return mapper.read(sj_no);
	}

	@Override
	public int modify(Schedule_JoinVO vo) {
		log.info("modify............"+vo);
		return mapper.update(vo);
	}

	@Override
	public int remove(Long sj_no) {
		log.info("remove............"+sj_no);
		return mapper.delete(sj_no);
	}

	@Override
	public List<Schedule_JoinVO> getList(Long s_no) {
		log.info("get Schedule LIst............"+s_no);
		return mapper.getList(s_no);
	}

}
