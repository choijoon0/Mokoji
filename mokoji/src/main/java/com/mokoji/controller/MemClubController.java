package com.mokoji.controller;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mokoji.domain.ClubVO;
import com.mokoji.domain.MemberVO;
import com.mokoji.service.MemClubService;

@Controller
public class MemClubController {
	
	@Autowired
	private MemClubService memClubService;
	
	
	//동호회 가입
	@RequestMapping(value = "/joinClub.do")
	public void joinClubInsert(ClubVO clubvo, MemberVO memvo, Model model) {
		//가져온 회원코드, 동호회 코드로 회원별동호회 테이블에 회원분류 코드찾기 그거 값이 1이면 이미 회장임
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("member", memvo);
		map.put("club", clubvo);
		int num = memClubService.getMemCtCode(map);
		if(num==2) {
			//2면이미 가입한 동호회
			System.out.println("이미 가입한 동호회에여");
		}else if(num==1) {
			//null이면 가입가능
			System.out.println("니가 만들었어요");
		}else{
			//null이면서 동호회 가입유형이 승인제면 N으로 아님 Y로
			memClubService.joinClub(map);
		}
	}
	
	

	
	
}
