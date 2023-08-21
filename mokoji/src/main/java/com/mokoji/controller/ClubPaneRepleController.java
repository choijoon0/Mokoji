package com.mokoji.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mokoji.domain.ClubPaneRepleVO;
import com.mokoji.domain.ClubPaneVO;
import com.mokoji.domain.MemberVO;
import com.mokoji.service.ClubPaneRepleService;

@Controller
public class ClubPaneRepleController {

	@Autowired
	private ClubPaneRepleService clubPaneRepleService;
	
	@RequestMapping(value="/insertComment.do")
	@ResponseBody
	public List<HashMap<String, Object>> getCommentList(@RequestParam("cp_code") int cp_code, ClubPaneVO cpvo ,ClubPaneRepleVO cprvo, MemberVO mvo, HttpSession session){
		HashMap<String, Object> map= new HashMap<String, Object>();
		int memcode = (int)session.getAttribute("code");
		mvo.setMem_code(memcode);
		map.put("cpreple", cprvo);
		map.put("member", mvo);
		map.put("clubpane", cpvo);
		clubPaneRepleService.insertComment(map);
		
		return clubPaneRepleService.getCommentList(cp_code);
	}
}
