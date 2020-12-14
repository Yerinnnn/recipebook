package com.recipebook.service;

import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.recipebook.dao.MemberDAO;
import com.recipebook.dao.RecipeDAO;
import com.recipebook.domain.MemberVO;

@Service
public class MemberServiceImpl implements MemberService {
	
	
	@Autowired
	private MemberDAO dao;

	@Override
	public void register(MemberVO vo) throws Exception {

	}

	@Override
	public MemberVO login(MemberVO vo) throws Exception {
		return dao.login(vo);
	}

}
