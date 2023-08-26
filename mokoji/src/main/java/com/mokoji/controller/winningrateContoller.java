package com.mokoji.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mokoji.domain.ClubVO;
import com.mokoji.domain.MatchingInfoVO;
import com.mokoji.service.MatchingService;

@Controller
public class winningrateContoller {

		@Autowired
		private MatchingService matService;
		
	    @RequestMapping(value = "/chart.do", method = RequestMethod.GET)
	    @ResponseBody
	    public String showChart(@RequestParam("club_code") int club_code, ClubVO vo, MatchingInfoVO mvo ,Model model) {
	    	vo.setClub_code(club_code);
	        model.addAttribute("winCount", matService.getwincount(vo));
	        model.addAttribute("lostCount", matService.getlostcount(vo));
	        model.addAttribute("winning", matService.getwinning(vo));

	        return "winningrate";
	    }
}
