package com.mokoji.dao;

import com.mokoji.domain.MemberVO;

public interface MemberDAO {
	public MemberVO checkMember(MemberVO vo);
	public void insertMember(MemberVO vo);
}
