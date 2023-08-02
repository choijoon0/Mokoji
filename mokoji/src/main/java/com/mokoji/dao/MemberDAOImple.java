package com.mokoji.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mokoji.domain.MemberVO;

@Repository("MemberDAO")
public class MemberDAOImple implements MemberDAO{
	@Autowired
	private SqlSessionTemplate mybatis;

	@Override
	public MemberVO checkMember(MemberVO vo) {
		// TODO Auto-generated method stub
		
		return mybatis.selectOne("MemberDAO.checkMember", vo);
				
	}

	@Override
	public void insertMember(MemberVO vo) {
		// TODO Auto-generated method stub
		mybatis.insert("MemberDAO.insertMember", vo);
	}
}
