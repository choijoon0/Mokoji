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
	public void insertMember(MemberVO vo) {
		// TODO Auto-generated method stub
		memberDAO.insertMember(vo);
	}

	@Override
	public int nameCheck(String mem_id) {
		// TODO Auto-generated method stub
		return memberDAO.nameCheck(mem_id);
	}

}
