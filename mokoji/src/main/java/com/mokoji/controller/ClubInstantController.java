package com.mokoji.controller;

import java.io.IOException;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mokoji.domain.ClubInstantVO;
import com.mokoji.domain.ClubVO;
import com.mokoji.service.ClubInstantService;
import com.mokoji.service.ClubService;

@Controller
public class ClubInstantController {
	
	@Autowired
	private ClubInstantService clubInstantService;
	
	@Autowired
	private ClubService clubService;
	
	@RequestMapping(value = "/details.do")
	public String getInstantList(ClubInstantVO vo, ClubVO vo2, Model model) throws IOException{
		
		model.addAttribute("oneClubList", clubService.getOneClublist(vo2));
		HashMap<String , Object> map = new HashMap<String, Object>();
		map.put("instant", vo);
		map.put("clublist", vo2);
		
		model.addAttribute("instant", clubInstantService.getInstantList(map));
		
		return "Clubdetails";

	}
	
}
