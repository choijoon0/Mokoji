package com.mokoji.controller;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.python.core.PyFunction;
import org.python.core.PyInteger;
import org.python.core.PyObject;
import org.python.util.PythonInterpreter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.mokoji.domain.CategoryVO;
import com.mokoji.domain.ClubVO;
import com.mokoji.domain.MatchingInfoVO;
import com.mokoji.domain.MatchingVO;
import com.mokoji.domain.MemClubVO;
import com.mokoji.domain.MemberVO;
import com.mokoji.service.MatchingService;
import com.mokoji.service.MemClubService;

@Controller
public class MatchingController {
	
	@Autowired
	private MatchingService matchingService;
	
	@Autowired
	private MemClubService memClubService;
	
	
	// 매칭 등록
	@RequestMapping(value = "/insertMatching.do", method = RequestMethod.POST)
	public String insertMatching(MatchingVO mvo, ClubVO cvo, MatchingInfoVO mivo) throws IOException{
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		
		int num = matchingService.selectMatching(mvo);
		mvo.setMat_code(num);
		
		map.put("match", mvo);
		map.put("club", cvo);
		map.put("matchinfo", mivo);
		
		matchingService.insertMatching(map);
		matchingService.insertMatchingInfo(map);
		
		return "redirect:/details.do";
	}
	
	
	// 매칭 리스트
	@RequestMapping(value = "/match.do", method = RequestMethod.GET)
	public String getMatchList(MatchingVO mvo, ClubVO cvo, CategoryVO ctvo, MemberVO mbvo, Model model, HttpSession session) throws IOException{
		
		if(session.getAttribute("clubcode")!= null) {
			  cvo.setClub_code((int)session.getAttribute("clubcode"));
		  }
		
		int memcode = (int)session.getAttribute("code");
	    mbvo.setMem_code(memcode);
	      
		HashMap<String, Object> map = new HashMap<String, Object>();
	      
		map.put("match", mvo);

		map.put("club", cvo);
		
		map.put("midcate", ctvo);
	
		map.put("member", mbvo);
		
		int memct = memClubService.getMemCtCode(map);
	    session.setAttribute("memct_code", memct);
	    
	    model.addAttribute("matchList", matchingService.getMatchList(map));
	    
		return "Matching";
	}
	
	// 등록된 매칭 참가하기
	@RequestMapping(value = "/joinmatch.do")
	public String insertJoinMatching(MatchingVO mvo, ClubVO cvo, MemClubVO mcvo, MemberVO mbvo , HttpSession session) throws IOException{
		
		HashMap<String, Object> map = new HashMap<String, Object>();  
		
		map.put("match", mvo);
		map.put("club", cvo);
		map.put("memclub", mcvo);
		map.put("mem", mbvo);				
		
		matchingService.insertJoinMatching(map);
		
		return "redirect:/match.do";
	}
	
	
		//승인 확인
		@RequestMapping(value="/upMatching.do", method = RequestMethod.POST)
		public String upMatching(MatchingInfoVO vo,ClubVO cvo,HttpSession session) {
			session.setAttribute("clubcode", cvo.getClub_code());
			matchingService.upMatching(vo);
			return "redirect:/details.do";
		}
		
		//승인 거절
		@RequestMapping(value="/delMatching.do", method = RequestMethod.POST)
		public String delMatching(MatchingInfoVO vo) {
			matchingService.delMatching(vo);
			
			return "redirect:/details.do";
		}
		
		
}
