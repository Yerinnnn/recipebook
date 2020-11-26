package com.recipebook.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.recipebook.domain.RecipeVO;

@Repository
public class RecipeDAOImpl implements RecipeDAO {
	
	@Inject
	private SqlSession sql;

	private static String namespace = "com.recipebook.mappers.recipe";

	@Override
	public List<RecipeVO> list() throws Exception {
		return sql.selectList(namespace + ".list");
	}

}
