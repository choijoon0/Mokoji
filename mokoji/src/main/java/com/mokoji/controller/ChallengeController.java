package com.mokoji.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mokoji.service.ClubService;

@Controller
public class ChallengeController {
	
	@Autowired
	private ClubService clubservice;
	
	@RequestMapping("challengeinsert.do")
	public void adsdsa() {
		System.out.println("asdasd");
	}
}
