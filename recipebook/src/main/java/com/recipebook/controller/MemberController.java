package com.recipebook.controller;

import java.util.logging.Logger;

import javax.inject.Inject;

import org.mariadb.jdbc.internal.logging.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.recipebook.domain.MemberVO;
import com.recipebook.service.MemberService;

@Controller
@RequestMapping("/recipebook/*")
public class MemberController {
	private static final org.mariadb.jdbc.internal.logging.Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	@Inject
	MemberService service;
	MemberVO vo;

	@Autowired
	BCryptPasswordEncoder passEncoder;
	
	@Bean
	public BCryptPasswordEncoder getPasswordEncoder()
	{
	  return new BCryptPasswordEncoder();
	}

	// 회원 가입 get
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public void getSignup() throws Exception {
		logger.info("get signup");
	}
	
	// 회원 가입 post
	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String postSignup(MemberVO vo) throws Exception {
		logger.info("post signup");

//		String inputPass = vo.getPassword();
//		String pass = passEncoder.encode(inputPass);
//		vo.setPassword(pass);
	
		service.login(vo);

		return "redirect:/recipebook/main";
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public void Signin() throws Exception {
		
	}
	
}
