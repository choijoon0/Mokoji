package com.mokoji.controller;

import java.io.IOException;
import java.util.Date;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
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
	
	
	
	//아이디 중복체크
	@RequestMapping(value="/checkMember.do", produces = "application/text; charset=utf-8")
				  // 화면에서 보낸 결과 한글 깨짐 해결 -> produces = "application/text; charset=utf8"
	@ResponseBody // --> 이것으로 비동기화 통신을을 함 ( 페이지전환되지 않도록)
	public String idchekc(MemberVO vo) 	// 인자로 사용자아이디(String)만 받아도 된다
	{	
		
		String result = "ID 사용가능합니다.";
		
		MemberVO memberVo = memberService.checkMember(vo);		
		if( memberVo != null ) result = "중복된 ID된 아이디입니다.";				
		return result;
	}
}
