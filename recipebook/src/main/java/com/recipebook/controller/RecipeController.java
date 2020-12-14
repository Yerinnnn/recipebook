package com.recipebook.controller;

import java.util.List;
import java.util.logging.Logger;

import javax.inject.Inject;

import org.mariadb.jdbc.internal.logging.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
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
	private static final org.mariadb.jdbc.internal.logging.Logger logger = LoggerFactory.getLogger(MemberController.class);

	@Inject
	private RecipeService service;
	private RecipeDAO dao;


	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public void getList(Model model) throws Exception {

		List<RecipeVO> list = null;
		list = service.list();

		model.addAttribute("list", list);
	}

	@RequestMapping(value = "/write", method = RequestMethod.GET)
	public void getWrite() throws Exception {
		logger.info("writeView");
	}

	@RequestMapping(value = "/write", method = RequestMethod.POST)
	public String postWirte(RecipeVO vo) throws Exception {
		service.write(vo);

		return "redirect:/recipebook/list";
	}

	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public void getMain() throws Exception {

	}

}
