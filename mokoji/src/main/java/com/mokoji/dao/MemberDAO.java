package com.mokoji.dao;

import com.mokoji.domain.MemberVO;

public interface MemberDAO {
	public MemberVO checkMember(MemberVO vo);
	public int insertMember(MemberVO vo);
}
