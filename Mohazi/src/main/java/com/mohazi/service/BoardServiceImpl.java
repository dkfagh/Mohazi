package com.mohazi.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mohazi.domain.Criteria;
import com.mohazi.domain.PartyVO;
import com.mohazi.mapper.BoardMapper;

import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
public class BoardServiceImpl implements BoardService{

   @Setter(onMethod_ = @Autowired)
   private BoardMapper mapper;
   /*
   @Override
   public List<PartyVO> getList(char type) {
      log.info("!!! LIST !!!");
      return mapper.getList(type);
   }
   */
   
   /*
   @Override
   public List<PartyVO> getList(char type, List<String> categoryArr, List<String> regionArr) {
      log.info("!!! LIST !!!");
      return mapper.getList(type, categoryArr, regionArr);
   }
   */
   
//   @Override
//   public List<PartyVO> getList(PartyVO party) {
//      log.info("!!! LIST !!!");
//      return mapper.getList(party);
//   }

   
   @Override
   public void register(PartyVO party) {
      log.info("!!! REGISTER !!!");
      mapper.insert(party);
   }
   @Override
   public PartyVO get(Long p_no) {
      log.info("!!! GET !!!" + p_no);
      return mapper.read(p_no);
   }
   @Override
   public boolean modify(PartyVO party) {
      log.info("!!! MODIFY !!!" + party);
      
      boolean modifyResult = (mapper.update(party) == 1);
      return modifyResult;
   }
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