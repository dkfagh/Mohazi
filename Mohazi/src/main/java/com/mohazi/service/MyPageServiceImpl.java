package com.mohazi.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mohazi.domain.Criteria;
import com.mohazi.domain.PartyVO;
import com.mohazi.domain.Party_JoinVO;
import com.mohazi.mapper.BoardAttachMapper;
import com.mohazi.mapper.BoardMapper;
import com.mohazi.mapper.MyPageMapper;
import com.mohazi.mapper.ScheduleMapper;
import com.mohazi.mapper.Schedule_JoinMapper;

import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
public class MyPageServiceImpl implements MyPageService{
   @Setter(onMethod_ = @Autowired)
   private MyPageMapper mapper;
   
   @Setter(onMethod_ = @Autowired)
   private BoardAttachMapper attachMapper;
 
   @Setter(onMethod_ = @Autowired)
   private BoardMapper boardMapper;
   
   @Setter(onMethod_ = @Autowired)
   private Schedule_JoinMapper SJMapper;
   
   @Setter(onMethod_ = @Autowired)
   private ScheduleMapper sMapper;
   
   
   @Transactional
   @Override
   public boolean delete(Long p_no) {
	   log.info("myPage Delete!!!!");

	   
	   mapper.LetOut(p_no);  // 게시글의 참여인원들을 다 내보낸다.
	   attachMapper.deleteAll(p_no);
	   

		return boardMapper.delete(p_no) == 1; // 삭제되면 리턴
   }

   
   @Override
   public boolean exit(Party_JoinVO pj) {
	   log.info("myPage Exit!!!!");
	   log.info("exit 안 : "+pj.getP_no() + " : "+pj.getId());

		return mapper.exit(pj) == 1;
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

//	@Override
//	public PageDTO getListPage(Criteria cri, int total) {
//		log.info("myPage List Paging 갱신");
//		
//		return new PageDTO(cri, total);
//	}


   
}