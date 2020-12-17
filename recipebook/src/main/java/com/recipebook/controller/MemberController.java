package com.recipebook.controller;

import java.util.logging.Logger;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.mariadb.jdbc.internal.logging.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.recipebook.domain.MemberVO;
import com.recipebook.service.MemberService;

@Controller
@RequestMapping("/recipebook/*")
public class MemberController {
	private static final org.mariadb.jdbc.internal.logging.Logger logger = LoggerFactory
			.getLogger(MemberController.class);

	@Inject
	MemberService service;
	MemberVO vo;

	@Autowired
	BCryptPasswordEncoder passEncoder;

	@Bean
	public BCryptPasswordEncoder getPasswordEncoder() {
		return new BCryptPasswordEncoder();
	}

	// 회원 가입 get
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public void getRegister() throws Exception {
		logger.info("get signup");
	}

	// 회원 가입 post
	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String postRegister(MemberVO vo) throws Exception {
		logger.info("post signup");

		String inputPass = vo.getPassword();
		String pass = passEncoder.encode(inputPass);
		vo.setPassword(pass);

		service.register(vo);

		return "redirect:/recipebook/main";
	}

	// 로그인 get
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public void login() throws Exception {
		logger.info("get login");
	}

	// 로그인 post
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String postLogin(MemberVO vo, HttpServletRequest req, RedirectAttributes rttr) throws Exception {
		logger.info("post signin");

		MemberVO login = service.login(vo);
		HttpSession session = req.getSession();

		logger.info(vo.getPassword());
		logger.info(login.getUsername());
		
		boolean passMatch = passEncoder.matches(vo.getPassword(), login.getPassword());

		if (login != null && passMatch) {
			session.setAttribute("member", login);
		} else {
			session.setAttribute("member", null);
			rttr.addFlashAttribute("msg", false);

			return "redirect:/recipebook/login";
		}

		return "redirect:/recipebook/main";
	}

	// 로그아웃
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String signout(HttpSession session) throws Exception {
		logger.info("get logout");

		service.logout(session);

		return "redirect:/";
	}
}
