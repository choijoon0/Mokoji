package com.mokoji.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mokoji.domain.CategoryVO;
import com.mokoji.domain.ClubVO;
import com.mokoji.domain.MemberVO;
import com.mokoji.domain.SocialingVO;
import com.mokoji.service.SocialingService;

@Controller
public class SocialingController {
	@Autowired
	private SocialingService socialingService;
	@RequestMapping(value="/insertSocialing.do")
	public String insertSocialing(SocialingVO vo, CategoryVO cvo, MemberVO mvo) throws IOException	{
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("socialing", vo);
		map.put("category", cvo);
		map.put("member", mvo);
		
		socialingService.insertSocialing(map);
		return "redirect:/go.do";
	}
	
	// 상위 카테고리 별 동호회 리스트 뽑기
	@RequestMapping(value = "/Social.do", method = RequestMethod.POST)
	@ResponseBody
	public List<SocialingVO> getHighSocialListInterest(@RequestParam("cthigh_name") String cthigh_name) {
		System.out.println("상위카테고리별 리스트" + cthigh_name);
		return socialingService.getHighSocialListInterest(cthigh_name);
	}

	// 하위 카테고리 별 동호회 리스트 뽑기
	@RequestMapping(value = "/Social.do", method = RequestMethod.GET)
	@ResponseBody
	public List<SocialingVO> getSocialListInterest(@RequestParam("ctmid_name") String ctmid_name) {
		System.out.println("하위카테고리별 리스트" + ctmid_name);
		return socialingService.getSocialListInterest(ctmid_name);
	}
	
	

}