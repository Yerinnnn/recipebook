package com.recipebook.dao;

import org.springframework.stereotype.Repository;

import com.recipebook.domain.MemberVO;

@Repository
public interface MemberDAO {

	public void register(MemberVO vo) throws Exception;

	public MemberVO login(MemberVO vo) throws Exception;

}
