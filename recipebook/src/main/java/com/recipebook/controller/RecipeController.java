package com.recipebook.controller;

import java.util.List;
import java.util.logging.Logger;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.mariadb.jdbc.internal.logging.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.recipebook.dao.RecipeDAO;
import com.recipebook.domain.MemberVO;
import com.recipebook.domain.RecipeVO;
import com.recipebook.service.RecipeService;

import org.springframework.ui.Model;

@Controller
@RequestMapping("/recipebook/*")
public class RecipeController {
	private static final org.mariadb.jdbc.internal.logging.Logger logger = LoggerFactory
			.getLogger(MemberController.class);

	@Inject
	private RecipeService service;
	private RecipeDAO dao;

	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public void main(MemberVO vo, HttpServletRequest req) throws Exception {
		HttpSession session = req.getSession();

		session.setAttribute("member", vo.getPassword());
	}

	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public void getList(Model model, @RequestParam("num") int num) throws Exception {

		// 게시물 총 갯수
		int count = service.count();

		// 한 페이지에 출력할 게시물 갯수
		int postNum = 16;

		// 하단 페이징 번호 ([ 게시물 총 갯수 ÷ 한 페이지에 출력할 갯수 ]의 올림)
		int pageNum = (int) Math.ceil((double) count / postNum);

		// 출력할 게시물
		int displayPost = (num - 1) * postNum;

		// 한번에 표시할 페이징 번호의 갯수
		int pageNum_cnt = 10;

		// 표시되는 페이지 번호 중 마지막 번호
		int endPageNum = (int) (Math.ceil((double) num / (double) pageNum_cnt) * pageNum_cnt);

		// 표시되는 페이지 번호 중 첫번째 번호
		int startPageNum = endPageNum - (pageNum_cnt - 1);

		// 마지막 번호 재계산
		int endPageNum_tmp = (int) (Math.ceil((double) count / (double) pageNum_cnt));

		if (endPageNum > endPageNum_tmp) {
			endPageNum = endPageNum_tmp;
		}

		boolean prev = startPageNum == 1 ? false : true;
		boolean next = endPageNum * pageNum_cnt >= count ? false : true;

		List<RecipeVO> list = null;
		list = service.listPage(displayPost, postNum);
		model.addAttribute("list", list);
		model.addAttribute("pageNum", pageNum);

		// 시작 및 끝 번호
		model.addAttribute("startPageNum", startPageNum);
		model.addAttribute("endPageNum", endPageNum);

		// 이전 및 다음
		model.addAttribute("prev", prev);
		model.addAttribute("next", next);

		// 현재 페이지
		model.addAttribute("select", num);
	}

	@RequestMapping(value = "/write", method = RequestMethod.GET)
	public void getWrite() throws Exception {
		logger.info("writeView");
	}

	@RequestMapping(value = "/write", method = RequestMethod.POST)
	public String postWirte(RecipeVO vo) throws Exception {
		service.write(vo);

		return "redirect:/recipebook/list?num=1";
	}

	@RequestMapping(value = "/read", method = RequestMethod.GET)
	public void getRead(@RequestParam("recipe_id") int recipe_id, Model model) throws Exception {
		RecipeVO vo = service.read(recipe_id);
		model.addAttribute("read", vo);
	}

	@RequestMapping(value = "/modify", method = RequestMethod.GET)
	public void getModify(@RequestParam("recipe_id") int recipe_id, Model model) throws Exception {
		RecipeVO vo = service.read(recipe_id);
		model.addAttribute("read", vo);
	}

	@RequestMapping(value = "/modify", method = RequestMethod.POST)
	public String postModify(RecipeVO vo) throws Exception {
		service.modify(vo);

		return "redirect:/recipebook/read?recipe_id=" + vo.getRecipe_id();
	}

	@RequestMapping(value = "/delete", method = RequestMethod.GET)
	public String getDelete(@RequestParam("recipe_id") int recipe_id) throws Exception {

		service.delete(recipe_id);

		return "redirect:/recipebook/list";
	}
}
