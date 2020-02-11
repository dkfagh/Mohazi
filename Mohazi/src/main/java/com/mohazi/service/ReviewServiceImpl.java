package com.mohazi.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mohazi.domain.ReviewVO;
import com.mohazi.mapper.ReviewMapper;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
public class ReviewServiceImpl implements ReviewService{

	@Setter(onMethod_ = @Autowired)
	private ReviewMapper mapper;
	
	
	@Override
	public int register(ReviewVO vo) {
		
		log.info("!!! REGISTER !!!" + vo);
		
		return mapper.insert(vo);
	}

	@Override
	public ReviewVO get(Long r_no) {
		
		log.info("!!! get !!!" + r_no);
		
		return mapper.read(r_no);
	}

	@Override
	public int remove(Long r_no) {
		
		log.info("!!! remove !!!" + r_no);
		
		return mapper.delete(r_no);
	}

	@Override
	public int modify(ReviewVO vo) {
		
		log.info("!!! modify !!!" + vo);
		
		return mapper.update(vo);
	}

	@Override
	public List<ReviewVO> getList(Long p_no) {
		
		log.info("!!! get Review List !!!" + p_no);
		
		return mapper.getList(p_no);
	}

}
