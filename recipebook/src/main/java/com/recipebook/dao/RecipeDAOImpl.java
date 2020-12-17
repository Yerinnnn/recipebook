package com.recipebook.dao;

import java.util.HashMap;
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

	@Override
	public List<RecipeVO> listPage(int displayPost, int postNum) throws Exception {
		HashMap<String, Integer> data = new HashMap<String, Integer>();

		data.put("displayPost", displayPost);
		data.put("postNum", postNum);

		return sql.selectList(namespace + ".listPage", data);
	}

	@Override
	public int count() throws Exception {
		return sql.selectOne(namespace + ".count");
	}

	@Override
	public void write(RecipeVO vo) throws Exception {
		sql.insert(namespace + ".write", vo);

	}

	@Override
	public RecipeVO read(int recipe_id) throws Exception {
		return sql.selectOne(namespace + ".read", recipe_id);
	}

	@Override
	public void modify(RecipeVO vo) throws Exception {
		sql.update(namespace + ".modify", vo);
	}

	@Override
	public void delete(int recipe_id) throws Exception {
		sql.delete(namespace + ".delete", recipe_id);

	}

}
