package com.recipebook.service;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.recipebook.dao.MemberDAO;
import com.recipebook.domain.MemberVO;

@Service
public class MemberServiceImpl implements MemberService {
	
	
	@Autowired
	private MemberDAO dao;

	@Override
	public void register(MemberVO vo) throws Exception {
		dao.register(vo);
	}

	@Override
	public MemberVO login(MemberVO vo) throws Exception {
		return dao.login(vo);
	}

	@Override
	public void logout(HttpSession session) throws Exception {
		session.invalidate();
	}

}
