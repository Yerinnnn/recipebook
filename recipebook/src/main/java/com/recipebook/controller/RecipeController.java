package com.recipebook.controller;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.recipebook.dao.RecipeDAO;
import com.recipebook.domain.RecipeVO;
import com.recipebook.service.RecipeService;

import org.springframework.ui.Model;


@Controller
@RequestMapping("/recipebook/*")
public class RecipeController {
	
	@Inject
	private RecipeService service;
	
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public void getList(Model model) throws Exception {
		
		List<RecipeVO> list = null;
		list = service.list();	
		
		model.addAttribute("list", list);
	}

}
