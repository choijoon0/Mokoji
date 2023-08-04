package com.mokoji.controller;

import java.io.IOException;
import java.util.Date;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.mokoji.domain.MemberVO;
import com.mokoji.service.MemberService;

@Controller
public class MemberController {
	
	@Autowired
	private MemberService memberService;
	

	//로그인 
	@RequestMapping(value = "/checkMember.do")
	public String checkMember(MemberVO vo, HttpSession session) throws IOException{
		MemberVO result = memberService.checkMember(vo);
		
		if(result == null || result.getMem_id() == null) {
			
			
			
			return "redirect:/test2.do";
		}else {
			// #4. 세션에 저장
			session.setAttribute("sessionTime", new Date().toString());
			session.setAttribute("name", result.getMem_id());
		}
		
		return "redirect:/test.do";
		
	}
	
	//회원가입
	@RequestMapping(value = "/insertMember.do")
	public String insertMember(MemberVO vo)
	{
		memberService.insertMember(vo);
		
		return "redirect:/test.do";
	}
	
	//아이디 중복 체크
	@RequestMapping(value = "/SignUp.do", method = RequestMethod.POST)
	@ResponseBody
	public int nameCheck(@RequestParam("mem_id") String mem_id) {
		return memberService.nameCheck(mem_id);
	}
}
