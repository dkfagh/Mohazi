package com.mohazi.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.mohazi.domain.UsersVO;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"file:src/main/webapp/WEB-INF/spring/root-context.xml"})
public class UsersMapperTests {
	
	@Setter(onMethod_ = @Autowired)
	private UsersMapper mapper;
	
	@Test
	public void testRead() {
		UsersVO vo = mapper.read("taegyu");
		log.info(vo);
		vo.getAuthList().forEach(authVO -> log.info(authVO));
	}
}

