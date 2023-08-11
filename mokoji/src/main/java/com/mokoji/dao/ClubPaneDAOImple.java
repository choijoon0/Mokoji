package com.mokoji.dao;

import java.util.HashMap;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

@Repository("ClubPaneDAO")
public class ClubPaneDAOImple implements ClubPaneDAO{

	private SqlSessionTemplate mybatis;
	
	@Override
	public int insertClubPane(HashMap<String, Object> map) {
		// TODO Auto-generated method stub
		return mybatis.insert("ClubPaneDAO.insertClubPane",map);
	}

}
