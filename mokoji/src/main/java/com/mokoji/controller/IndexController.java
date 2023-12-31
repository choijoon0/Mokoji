package com.mokoji.controller;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mokoji.domain.IndexVO;
import com.mokoji.service.IndexService;

@Controller
public class IndexController {
	@Autowired
	private IndexService indexService;
	
	@RequestMapping("/{step}.do")
	public String viewPage(@PathVariable String step) {
		return step;
	}
	
	@RequestMapping(value = "/insertMember.do")
	public String insertBoard(IndexVO vo) throws IOException{
		indexService.insertMember(vo);
		return "redirect:/singIn.do";
	}
}
