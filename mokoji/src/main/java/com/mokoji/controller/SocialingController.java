package com.mokoji.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.mokoji.domain.SocialingVO;
import com.mokoji.service.SocialingService;

@Controller
public class SocialingController {
	@Autowired
	private SocialingService socialingService;
	
	public String insertSocialing(SocialingVO vo) {
		socialingService.insertSocialing(vo);
		return "redirect:/createClub";
	}
}
