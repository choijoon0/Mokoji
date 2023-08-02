package com.mokoji.service;

import com.mokoji.domain.MemberVO;

public interface MemberService {
	public MemberVO checkMember(MemberVO vo);
	public void insertMember(MemberVO vo);
}
