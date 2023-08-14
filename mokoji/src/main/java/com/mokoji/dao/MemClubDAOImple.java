package com.mokoji.dao;

import java.util.HashMap;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
@Repository("MemClubDAO")
public class MemClubDAOImple implements MemClubDAO{
	
	@Autowired
	private SqlSessionTemplate mybatis;

	@Override
	public int getMemCtCode(HashMap<String, Object> map) {
		// TODO Auto-generated method stub
		Integer cnt = mybatis.selectOne("MemClubDAO.getMemCtCode", map);
		if(cnt == null) {
			cnt=0;
		}
		System.out.println(cnt+"제발");
		return cnt;
	}

	@Override
	public int joinClub(HashMap<String, Object> map) {
		// TODO Auto-generated method stub
		return mybatis.insert("MemClubDAO.joinClub", map);
	}

	@Override
	public String checkMemClub(HashMap<String, Object> map) {
		// TODO Auto-generated method stub
		return mybatis.selectOne("MemClubDAO.checkMemClub", map);
	}

}
