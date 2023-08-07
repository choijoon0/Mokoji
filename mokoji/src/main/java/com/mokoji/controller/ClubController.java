package com.mokoji.controller;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mokoji.domain.IndexVO;
import com.mokoji.service.ClubService;

@Controller
public class ClubController {
	@Autowired
	private ClubService clubService;
	
	//동호회등록
	@RequestMapping(value="/insertclub.do")
	public String insertClub(IndexVO vo) {
		clubService.insertClub(vo);
		return "redirect:/insertclub.do";
	}
	
	//동호회리스트
	public String getClubList(IndexVO vo, Model model) throws IOException{
		
		
		return "clubTotal";
	}
	
}
