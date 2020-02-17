package com.mohazi.mapper;

import java.util.List;

import com.mohazi.domain.Criteria;
import com.mohazi.domain.PartyVO;
import com.mohazi.domain.Party_JoinVO;

public interface MyPageMapper {
   
   //public List<PartyVO> getList(char type);
   //public List<PartyVO> getList(char type, List<String> categoryArr, List<String> regionArr);
   //public List<PartyVO> getList(PartyVO party);
   
   public List<PartyVO> getListWithPaging(Criteria cri);
   public int getTotalCount(Criteria cri);

   public void insert(PartyVO party);
   
   public int LetOut(Long p_no);
   public int exit(Party_JoinVO pj);

}