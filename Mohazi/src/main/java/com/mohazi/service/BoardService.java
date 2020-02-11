package com.mohazi.service;

import java.util.List;

import com.mohazi.domain.BoardAttachVO;
import com.mohazi.domain.Criteria;
import com.mohazi.domain.PartyVO;

public interface BoardService {


   //public List<PartyVO> getList(char type);
   //public List<PartyVO> getList(char type, List<String> categoryArr, List<String> regionArr);
   //public List<PartyVO> getList(PartyVO party);
   public List<PartyVO> getList(Criteria cri);
  
   public int getTotal(Criteria cri);
   
   public void register(PartyVO party);
   public PartyVO get(Long p_no);
   public boolean modify(PartyVO party);
   public boolean remove(Long p_no);


   public List<PartyVO> getSearch(Criteria cri);
   public int searchTotal (Criteria cri);
}
