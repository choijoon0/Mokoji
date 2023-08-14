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
	   public String getInstantList(ClubInstantVO vo, ClubVO vo2, MemberVO mvo,Model model, HttpSession session) throws IOException{
		   
		  
	      int memcode = (int)session.getAttribute("code");
	      mvo.setMem_code(memcode);
	      
	      model.addAttribute("oneClubList", clubService.getOneClublist(vo2));
	      HashMap<String , Object> map = new HashMap<String, Object>();
	      map.put("instant", vo);
	      map.put("clublist", vo2);
	      map.put("member", mvo);
	      
	      //동호회 가입 확인
	      String check = memClubService.checkMemClub(map);
	     
	      //확인값에 따라 세션으로 전송 
	      if(check == null) {
	    	  session.setAttribute("check", "태욱");
	      }else if(check == "N") {
	    	  session.setAttribute("check", "아영");
	      }else if(check == "Y") {
	    	  session.setAttribute("check", "준성");
	      }
	     
	      model.addAttribute("instant", clubInstantService.getInstantList(map));
	      
	      return "Clubdetails";

	   }

	
}
