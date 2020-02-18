package com.mohazi.mapper;

import java.util.List;

import com.mohazi.domain.BoardAttachVO;


public interface BoardAttachMapper {

	public void insert(BoardAttachVO vo);
	
	public void delete(String uuid);
	
	public List<BoardAttachVO> findByPno(Long p_no);
	
	public void deleteAll(Long p_no);
	
	public List<BoardAttachVO> getOldFiles();


}
