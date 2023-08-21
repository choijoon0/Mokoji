package com.mokoji.controller;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mokoji.domain.ClubInstantVO;
import com.mokoji.domain.ClubPaneLikesVO;
import com.mokoji.domain.ClubPaneVO;
import com.mokoji.domain.ClubVO;
import com.mokoji.domain.MemberVO;
import com.mokoji.service.ClubInstantService;
import com.mokoji.service.ClubPaneService;
import com.mokoji.service.ClubService;
import com.mokoji.service.MemClubService;

@Controller
public class ClubInstantController {
	@Autowired
	private ClubPaneService clubPaneService;
	
	@Autowired
	private ClubInstantService clubInstantService;
	
	@Autowired
	private ClubService clubService;
	
	@Autowired
	private MemClubService memClubService;
	
	   @RequestMapping(value = "/details.do")
	   public String getInstantList(ClubInstantVO vo, ClubVO vo2, ClubPaneLikesVO cplvo,MemberVO mvo, Model model, HttpSession session) throws IOException{
		   
		  if(session.getAttribute("clubcode")!= null) {
			  vo2.setClub_code((int)session.getAttribute("clubcode"));
		  }
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
	      

	      int check = memClubService.checkMcCode(map);
	      session.setAttribute("check", check);
	     
	      //내 좋아요 리스트 뽑기
	      model.addAttribute("myLikes", clubPaneService.getMyLikes(mvo));
	      System.out.println(vo2.getClub_code()+"클럽");
	      System.out.println(mvo.getMem_code()+"멤버");
	      model.addAttribute("MemClubList", memClubService.getAllMemClub(vo2));
	      model.addAttribute("clubPaneList", clubPaneService.selectClubPaneList(map));
	      model.addAttribute("instant", clubInstantService.getInstantList(map));
	      session.removeAttribute("clubcode");
	      
	      return "Clubdetails";

	   }

	
}
