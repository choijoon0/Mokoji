package com.mokoji.controller;

import java.io.IOException;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mokoji.domain.ClubPaneVO;
import com.mokoji.domain.ClubVO;
import com.mokoji.domain.MemClubVO;
import com.mokoji.domain.MemberVO;
import com.mokoji.service.ClubPaneService;

@Controller
public class ClubPaneController {
	@Autowired
	private ClubPaneService clubPaneService;
	
	@RequestMapping(value="/insertClubPane.do")
	public void insertClubPane(ClubVO vo ,ClubPaneVO clubpanevo, MemberVO memvo, MemClubVO memclubvo, Model model) throws IOException{
		
		
		
		
		//VO여러개 해쉬맵으로
		HashMap<String, Object> map = new HashMap<String, Object>();

		map.put("clubpane", clubpanevo);
		map.put("memclub", memclubvo);
		
		int num = clubPaneService.insertClubPane(map);
		if(num==0 || num <0) {
			System.out.println("실패"+num);
		}else {
			System.out.println("성공"+num);
		}
	}
	
}
