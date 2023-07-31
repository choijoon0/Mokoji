package com.mokoji.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mokoji.domain.SignInVO;

@Repository("signInDAO")
public class SignInDAOImple implements SignInDAO{
	@Autowired
	private SqlSessionTemplate mybatis;

	@Override
	public int checkMember(SignInVO vo) {
		// TODO Auto-generated method stub
		
		return mybatis.selectOne("SignInDAO.checkMember", vo);
				
	}
}
