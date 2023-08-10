package com.mokoji.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mokoji.domain.SocialingVO;
import com.mokoji.service.SocialingService;

@Controller
public class SocialingController {
	@Autowired
	private SocialingService socialingService;
	
	@RequestMapping(value="/insertSocialing.do")
	public String insertSocialing(SocialingVO vo) 
	{
		System.out.println(vo.getCtmid_code()  );

		socialingService.insertSocialing(vo);
		
		return "redirect:/go.do";
	}
}