package com.recipebook.service;

import java.util.List;

import com.recipebook.domain.RecipeVO;

public interface RecipeService {
	public List<RecipeVO> list() throws Exception;
}
