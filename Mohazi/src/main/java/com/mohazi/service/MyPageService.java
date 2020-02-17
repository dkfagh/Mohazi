package com.mohazi.service;

import java.util.List;

import com.mohazi.domain.Criteria;
import com.mohazi.domain.PartyVO;
import com.mohazi.domain.Party_JoinVO;

public interface MyPageService {

   public List<PartyVO> getList(Criteria cri);
   public int getTotal(Criteria cri);
   
   public boolean delete(Long p_no);
   
   public boolean exit(Party_JoinVO pj);

// 목록with페이징
//	public PageDTO getListPage(Criteria cri, int total);
   
}