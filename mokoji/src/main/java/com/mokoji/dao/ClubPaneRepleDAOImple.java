package com.mokoji.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("ClubPaneRepleDAO")
public class ClubPaneRepleDAOImple implements ClubPaneRepleDAO{

	@Autowired
	private SqlSessionTemplate mybatis;

	@Override
	public void insertComment(HashMap<String, Object> map) {
		// TODO Auto-generated method stub
		mybatis.insert("ClubPaneReple.insertComment", map);
	}

	@Override
	public List<HashMap<String, Object>> getCommentList(int cp_code) {
		// TODO Auto-generated method stub
		List<HashMap<String, Object>> list = mybatis.selectList("ClubPaneReple.getCommentList", cp_code);
		return list;
	}
	
	
}
