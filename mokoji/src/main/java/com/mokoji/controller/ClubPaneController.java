package com.mokoji.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mokoji.domain.ClubPaneVO;
import com.mokoji.domain.ClubVO;
import com.mokoji.domain.MemClubVO;
import com.mokoji.service.ClubPaneService;

@Controller
public class ClubPaneController {
	@Autowired
	private ClubPaneService clubPaneService;
	
	
	//게시판 등록
	@RequestMapping(value="/insertClubPane.do", method = RequestMethod.POST)
	public String insertClubPane(ClubPaneVO clubpanevo, MemClubVO memclubvo,HttpSession session) throws IOException{
		int mccode = (Integer)session.getAttribute("check");
		memclubvo.setMc_code(mccode);

		//VO여러개 해쉬맵으로
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("clubpane", clubpanevo);
		map.put("memclub", memclubvo);
		
		clubPaneService.insertClubPane(map);
		
		return "aaa";
	}
	
	//하트 업데이트
	@RequestMapping(value = "/updateHeart.do", method = RequestMethod.POST)
	@ResponseBody
	public List<ClubPaneVO> updateHeart(@RequestParam("cp_code") int cp_code, ClubVO vo){
		clubPaneService.updateLikes(cp_code);
		return clubPaneService.getOneClubPane(cp_code);
	}
	
	//하트 내리기
	@RequestMapping(value="/downHeart.do", method = RequestMethod.POST)
	@ResponseBody
	public List<ClubPaneVO> downHeart(@RequestParam("cp_code") int cp_code, ClubVO vo){
		clubPaneService.downHeart(cp_code);
		return clubPaneService.getOneClubPane(cp_code);
	}
	
}
