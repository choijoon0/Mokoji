package com.mokoji.controller;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.mokoji.domain.ClubPaneVO;
import com.mokoji.domain.ClubVO;
import com.mokoji.domain.MemClubVO;
import com.mokoji.domain.MemberVO;
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
	
	

	
	
}
