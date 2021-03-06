package com.mohazi.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mohazi.domain.BoardAttachVO;
import com.mohazi.domain.Criteria;
import com.mohazi.domain.PartyVO;
import com.mohazi.mapper.BoardAttachMapper;
import com.mohazi.mapper.BoardMapper;
import com.mohazi.mapper.MyPageMapper;

import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
public class BoardServiceImpl implements BoardService{

   @Setter(onMethod_ = @Autowired)
   private BoardMapper mapper;
   
   @Setter(onMethod_ = @Autowired)
	private BoardAttachMapper attachMapper;
   
	
	@Setter(onMethod_ = @Autowired) 
	private MyPageMapper pagemapper;
	
   
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

   @Transactional
   @Override
   public void register(PartyVO party) {
      log.info("!!! REGISTER !!!"+party);
      mapper.insertSelectKey(party);
      if (party.getAttachList() == null || party.getAttachList().size() <= 0) {
			return;
		}
      party.getAttachList().forEach(attach -> {

			attach.setP_no(party.getP_no());
			attachMapper.insert(attach);
		});
   }
   @Override
   public PartyVO get(Long p_no) {
      log.info("!!! GET !!!" + p_no);
      return mapper.read(p_no);
   }
   @Transactional
   @Override
   public boolean modify(PartyVO party) {
	      log.info("!!! MODIFY !!!" + party);
	      
	      attachMapper.deleteAll(party.getP_no());
	      
	      boolean modifyResult = (mapper.update(party) == 1);
	      log.info(modifyResult);
	      log.info( party.getAttachList());
	      if (modifyResult) {
	         // 첨부파일이 없을 경우
	         if(party.getAttachList() == null) {}
	         // 첨부파일이 있을 경우
	         else if(party.getAttachList().size() > 0){
	            party.getAttachList().forEach(attach -> {

	              attach.setP_no(party.getP_no());
	              attachMapper.insert(attach);
	           });
	         }
	      }
	      return modifyResult;
	   }
   @Transactional
   @Override
   public boolean remove(Long p_no) {
	   
	   log.info("remove...." + p_no);
	 
	   pagemapper.LetOut(p_no); // 게시글의 참여인원들을 다 내보낸다.
		 
	   attachMapper.deleteAll(p_no);

	   return mapper.delete(p_no) == 1;

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
   
	@Override
	public List<PartyVO> getSearch(Criteria cri) {
		return mapper.getSearch(cri);
	}
	@Override
	public int searchTotal(Criteria cri) {
	
		return mapper.searchAmount(cri);
	}
	
	@Override
	public List<BoardAttachVO> getAttachList(Long p_no) {
		log.info("get Attach list by p_no" + p_no);
		return attachMapper.findByPno(p_no);
	}


   
   
}