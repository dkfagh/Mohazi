package com.mohazi.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import com.mohazi.domain.UsersVO;
import com.mohazi.mapper.UsersMapper;
import com.mohazi.security.domain.CustomUser;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
public class CustomUserDetailsService implements UserDetailsService{
	
	@Setter(onMethod_ = @Autowired)
	private UsersMapper usersMapper;

	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		log.warn("!!! LOAD USER BY USERNAME !!!" + username);
		
		UsersVO vo = usersMapper.read(username);
		
		log.warn("!!! QUERIED BY USERS MAPPER !!!" + vo);
		
		return vo == null ? null : new CustomUser(vo);
	}
	
	
}
