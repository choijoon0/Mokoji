package com.mokoji.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mokoji.dao.MemberDAOImple;
import com.mokoji.domain.MemberVO;

@Service("memberService")
public class MemberServiceImple implements MemberService{
	
	@Autowired
	private MemberDAOImple memberDAO;
	
	@Override
	public MemberVO checkMember(MemberVO vo) {
		return memberDAO.checkMember(vo);
	}

	@Override
	public int insertMember(MemberVO vo) {
		// TODO Auto-generated method stub
		return memberDAO.insertMember(vo);
	}

}
