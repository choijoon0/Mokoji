package com.mokoji.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mokoji.domain.ClubInstantVO;

@Repository("ClubInstantDAO")
public class ClubInstantDAOImple implements ClubInstantDAO{

	@Autowired
	private SqlSessionTemplate mybatis;
	
	
	public List<HashMap<String, Object>> getInstantList(HashMap<String, Object> map){
		List<HashMap<String, Object>> list = mybatis.selectList("ClubInstantDAO.getInstantList", map);
		
		return list;
	}


	@Override
	public int insertClubInstant(HashMap<String, Object> map) {
		// TODO Auto-generated method stub
		return mybatis.insert("ClubInstantDAO.insertClubInstant", map);
	}
}
