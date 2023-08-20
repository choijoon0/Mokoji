package com.mokoji.controller;

import java.io.IOException;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mokoji.domain.ClubInstantVO;
import com.mokoji.domain.ClubVO;
import com.mokoji.domain.MatchingVO;
import com.mokoji.service.ClubInstantService;
import com.mokoji.service.ClubService;
import com.mokoji.service.MatchingService;

@Controller
public class ClubInstantController {
	
	@Autowired
	private ClubInstantService clubInstantService;
	
	@Autowired
	private ClubService clubService;

	@Autowired
	private MatchingService matchingService;
	
	@RequestMapping(value = "/details.do")
	public String getInstantList(ClubInstantVO vo, ClubVO vo2, MatchingVO vo3, Model model) throws IOException{
		
		model.addAttribute("oneClubList", clubService.getOneClublist(vo2));
		HashMap<String , Object> map = new HashMap<String, Object>();
		map.put("instant", vo);
		map.put("clublist", vo2);		
		map.put("match", vo3);
		
		model.addAttribute("instant", clubInstantService.getInstantList(map));
		model.addAttribute("allmatchList", matchingService.getAllMatch(map));
		
		
		return "Clubdetails";

	}
	
	
}
