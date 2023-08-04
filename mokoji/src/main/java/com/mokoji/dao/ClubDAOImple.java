package com.mokoji.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mokoji.domain.IndexVO;

@Repository("ClubDAO")
public class ClubDAOImple implements ClubDAO{
	@Autowired
	private SqlSessionTemplate mybatis;

	
	//동호회 등록
	@Override
	public int insertClub(IndexVO vo) {
		// TODO Auto-generated method stub
		return mybatis.insert("IndexDAO.insertClub", vo);
	}

}
