package com.mokoji.controller;

import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mokoji.domain.IndexVO;
import com.mokoji.service.IndexService;

@Controller
public class IndexController {
	@Autowired
	private IndexService indexService;
	
	
	
	//기본 경로
//	@RequestMapping({"/{step}.do"})
//	public String viewPage(@PathVariable String step) {
//		return step;
//	}
	

	
}
