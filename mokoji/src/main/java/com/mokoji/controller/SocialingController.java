package com.mokoji.controller;

import java.io.IOException;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mokoji.domain.CategoryVO;
import com.mokoji.domain.MemberVO;
import com.mokoji.domain.SocialingVO;
import com.mokoji.service.SocialingService;

@Controller
public class SocialingController {
	@Autowired
	private SocialingService socialingService;
	
	@RequestMapping(value="/insertSocialing.do")
	public String insertSocialing(SocialingVO vo, CategoryVO cvo, MemberVO mvo) throws IOException	{
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("socialing", vo);
		map.put("category", cvo);
		map.put("member", mvo);
		
		socialingService.insertSocialing(map);
		
		return "redirect:/go.do";
	}
	

}