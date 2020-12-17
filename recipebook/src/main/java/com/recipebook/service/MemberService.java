package com.recipebook.service;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import com.recipebook.domain.MemberVO;

@Service
public interface MemberService {

	public void register(MemberVO vo) throws Exception;

	public MemberVO login(MemberVO vo) throws Exception;
	
	public void logout(HttpSession session) throws Exception;


}
