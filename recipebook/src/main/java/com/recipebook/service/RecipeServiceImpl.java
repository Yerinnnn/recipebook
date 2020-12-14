package com.recipebook.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.recipebook.dao.RecipeDAO;
import com.recipebook.domain.RecipeVO;

@Service
public class RecipeServiceImpl implements RecipeService {

	@Autowired
	private RecipeDAO dao;
	private RecipeVO vo;

	@Override
	public List<RecipeVO> list() throws Exception {
		return dao.list();
	}

	@Override
	public void write(RecipeVO vo) throws Exception {
		dao.write(vo);
	}

}
