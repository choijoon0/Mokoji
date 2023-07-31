package com.mokoji.controller;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mokoji.domain.SignInVO;
import com.mokoji.service.SignInService;

@Controller
public class SignInController {
	@Autowired
	private SignInService signInservice;
	
	@RequestMapping("/{step}.do")
	public String viewPage(@PathVariable String step) {
		return step;
	}
	
	@RequestMapping(value = "/checkMember.do")
	public String insertBoard(SignInVO vo) throws IOException{
		signInservice.checkMember(vo);
		return "redirect:/singIn.do";
	}
}
