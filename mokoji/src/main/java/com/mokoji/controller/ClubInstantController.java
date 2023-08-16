package com.mokoji.controller;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mokoji.domain.ClubInstantVO;
import com.mokoji.domain.ClubVO;
import com.mokoji.domain.MemberVO;
import com.mokoji.service.ClubInstantService;
import com.mokoji.service.ClubService;
import com.mokoji.service.MemClubService;

@Controller
public class ClubInstantController {
	
	@Autowired
	private ClubInstantService clubInstantService;
	
	@Autowired
	private ClubService clubService;
	
	@Autowired
	private MemClubService memClubService;
	
	   @RequestMapping(value = "/details.do")
	   public String getInstantList(ClubInstantVO vo, ClubVO vo2, MemberVO mvo, Model model, HttpSession session) throws IOException{
		   
		  
	      int memcode = (int)session.getAttribute("code");
	      mvo.setMem_code(memcode);
	      
	      //동아리 회장확인
	      model.addAttribute("oneClubList", clubService.getOneClublist(vo2));
	      HashMap<String , Object> map = new HashMap<String, Object>();
	      map.put("instant", vo);
	      map.put("club", vo2);
	      map.put("member", mvo);
	      
	      int memct = memClubService.getMemCtCode(map);
	      session.setAttribute("memct_code", memct);
	      
	      //mc_code확인 후 세션보내기
	      int check = memClubService.checkMcCode(map);
	      session.setAttribute("check", check);

	      
	     
	      model.addAttribute("instant", clubInstantService.getInstantList(map));
	      
	      return "Clubdetails";

	   }

	
}
