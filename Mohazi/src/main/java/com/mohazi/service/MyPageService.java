package com.mohazi.service;

import java.util.List;

import com.mohazi.domain.Criteria;
import com.mohazi.domain.PartyVO;

public interface MyPageService {

   public List<PartyVO> getList(Criteria cri);
   public int getTotal(Criteria cri);
   
   public boolean remove(Long p_no);

   
}