package com.mokoji.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository("ClubInstantDAO")
public class ClubInstantDAOImple implements ClubInstantDAO{

	@Autowired
	private SqlSessionTemplate mybatis;
	
	
	public List<HashMap<String, Object>> getInstantList(HashMap<String, Object> map){
		List<HashMap<String, Object>> list = mybatis.selectList("ClubInstantDAO.getInstantList", map);
		return list;
	}
}
