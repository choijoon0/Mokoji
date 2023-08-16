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
		return cnt;
	}

	@Override
	public int joinClub(HashMap<String, Object> map) {
		// TODO Auto-generated method stub
		return mybatis.insert("MemClubDAO.joinClub", map);
	}

	@Override
	public int checkMcCode(HashMap<String, Object> map) {
		// TODO Auto-generated method stub
		Integer mccode = mybatis.selectOne("MemClubDAO.checkMcCode", map);
		if(mccode == null) {
			mccode = 0;
		}
		
		return mccode;
	}

}
