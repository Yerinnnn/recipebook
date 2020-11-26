package com.recipebook.dao;

import java.util.List;

import com.recipebook.domain.RecipeVO;

public interface RecipeDAO {
	
	 public List<RecipeVO> list() throws Exception; 

}
