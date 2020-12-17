package com.recipebook.service;

import java.util.List;

import com.recipebook.domain.RecipeVO;

public interface RecipeService {
	public List<RecipeVO> list() throws Exception;
	
	public List<RecipeVO> listPage(int displayPost, int postNum) throws Exception;
	
	public int count() throws Exception;

	public void write(RecipeVO vo) throws Exception;
	
	public RecipeVO read(int recipe_id) throws Exception;
	
	public void modify(RecipeVO vo) throws Exception;
	
	public void delete(int recipe_id) throws Exception;
}
