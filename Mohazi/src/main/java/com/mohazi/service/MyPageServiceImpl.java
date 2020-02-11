package com.mohazi.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mohazi.domain.Criteria;
import com.mohazi.domain.PartyVO;
import com.mohazi.mapper.MyPageMapper;

import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
public class MyPageServiceImpl implements MyPageService{
   @Setter(onMethod_ = @Autowired)
   private MyPageMapper mapper;

 
   @Override
   public boolean remove(Long p_no) {
      // TODO Auto-generated method stub
      return false;
   }
   
   @Override
   public List<PartyVO> getList(Criteria cri) {
      
      log.info("get List with criteria: " + cri);
      
      return mapper.getListWithPaging(cri);
   }
   @Override
   public int getTotal(Criteria cri) {

      log.info("get total count");
      return mapper.getTotalCount(cri);
   }


   
}