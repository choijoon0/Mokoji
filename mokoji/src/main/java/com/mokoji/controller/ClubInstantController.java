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

	
	//동호회 상세 페이지 이동
	@RequestMapping(value = "/details.do")
	public String getInstantList(ClubInstantVO vo, ClubVO vo2, ClubPaneLikesVO cplvo, MemberVO mvo, Model model,
			HttpSession session) throws IOException {

		if (session.getAttribute("clubcode") != null) {
			vo2.setClub_code((int) session.getAttribute("clubcode"));
			session.setAttribute("ccode", session.getAttribute("clubcode"));
		}
		
		System.out.println(vo2.getClub_code()+"클럽코드");
		int memcode = (int) session.getAttribute("code");
		mvo.setMem_code(memcode);
		System.out.println(memcode+"멤코드");
		// 동아리 회장확인
		model.addAttribute("oneClubList", clubService.getOneClublist(vo2));
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("instant", vo);
		map.put("club", vo2);
		map.put("member", mvo);

		int memct = memClubService.getMemCtCode(map);
		System.out.println(memct+"멤시티");
		session.setAttribute("memct_code", memct);

		int check = memClubService.checkMcCode(map);
		System.out.println(check+"체크");
		session.setAttribute("check", check);

		// 내 좋아요 리스트 뽑기
		model.addAttribute("myLikes", clubPaneService.getMyLikes(mvo));
		model.addAttribute("MemClubList", memClubService.getAllMemClub(vo2));
		model.addAttribute("clubPaneList", clubPaneService.selectClubPaneList(map));
		model.addAttribute("instant", clubInstantService.getInstantList(map));
		
		//페이지를 나갔다 들어왔을때 각 클럽코드 적용되야함으로 지워줌
		//멤버클럽컨트롤러에서 가입 승인시 세션에 보내줌
		session.removeAttribute("clubcode");

		return "Clubdetails";
		
	}

}
