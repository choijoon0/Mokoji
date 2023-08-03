package com.mokoji.controller;

import java.io.IOException;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mokoji.domain.CategoryVO;
import com.mokoji.domain.IndexVO;
import com.mokoji.service.IndexService;

@Controller
public class IndexController {
	@Autowired
	private IndexService indexService;
	
	//index - main 연결
	@RequestMapping(value="/go.do")
	public String goMain(IndexVO vo,Model model) throws IOException{
		model.addAttribute("clubList", indexService.getClubList(vo));
		return "main/main";
	}
	
	//기본 경로
	@RequestMapping("/{step}.do")
	public String viewPage(@PathVariable String step) {
		return step;
	}
	
	//회원가입
	@RequestMapping(value="/goSign.do")
	public String goSignUp(CategoryVO vo, Model model) throws IOException{
		
		model.addAttribute("catehighList", indexService.getCateHighList(vo));
		//model.addAttribute("catemidList", indexService.getCateMidList(vo));
		
		return "SignUp";
	}
	
}
