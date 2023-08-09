package com.mokoji.controller;

import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mokoji.domain.CategoryVO;
import com.mokoji.domain.ClubVO;
import com.mokoji.domain.IndexVO;
import com.mokoji.service.CategoryService;
import com.mokoji.service.ClubService;

@Controller
public class ClubController {
	@Autowired
	private ClubService clubService;

	@Autowired
	private CategoryService categoryService;

	// 동호회등록
	@RequestMapping(value = "/insertclub.do")
	public String insertClub(IndexVO vo) {
		clubService.insertClub(vo);
		return "redirect:/insertclub.do";
	}

	// index - main 연결
	@RequestMapping(value = "/go.do")
	public String goMain(CategoryVO vo1, ClubVO vo, Model model) throws IOException {
		// 동호회 리스트 가져오기
		model.addAttribute("clubList", clubService.getClubList(vo));

		// return "main/main";
		return "/main/testindex";
	}

	// 상위 카테고리 별 동호회 리스트 뽑기
	@RequestMapping(value = "/clubTotal.do", method = RequestMethod.POST)
	@ResponseBody
	public List<ClubVO> getHighClubListInterest(@RequestParam("cthigh_name") String cthigh_name) {
		return clubService.getHighClubListInterest(cthigh_name);
	}

	// 하위 카테고리 별 동호회 리스트 뽑기
	@RequestMapping(value = "/clubTotal.do", method = RequestMethod.GET)
	@ResponseBody
	public List<ClubVO> getClubListInterest(@RequestParam("ctmid_name") String ctmid_name) {
		return clubService.getClubListInterest(ctmid_name);
	}
}
