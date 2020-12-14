package com.recipebook.service;

import org.springframework.stereotype.Service;

import com.recipebook.domain.MemberVO;

@Service
public interface MemberService {

	public void register(MemberVO vo) throws Exception;

	public MemberVO login(MemberVO vo) throws Exception;


}
