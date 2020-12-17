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
	public List<RecipeVO> listPage(int displayPost, int postNum) throws Exception {
		return dao.listPage(displayPost, postNum);
	}

	@Override
	public int count() throws Exception {
		return dao.count();
	} 

	@Override
	public void write(RecipeVO vo) throws Exception {
		dao.write(vo);
	}

	@Override
	public RecipeVO read(int recipe_id) throws Exception {
		return dao.read(recipe_id);
	}

	@Override
	public void modify(RecipeVO vo) throws Exception {
		dao.modify(vo);
	}

	@Override
	public void delete(int recipe_id) throws Exception {
		dao.delete(recipe_id);
		
	}

}
