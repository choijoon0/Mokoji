package com.mokoji.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mokoji.domain.ClubPaneVO;
import com.mokoji.domain.ClubVO;

@Repository("ClubPaneDAO")
public class ClubPaneDAOImple implements ClubPaneDAO{
	@Autowired
	private SqlSessionTemplate mybatis;
	
	@Override
	public void insertClubPane(HashMap<String, Object> map) {
		// TODO Auto-generated method stub
		mybatis.insert("ClubPaneDAO.insertClubPane", map);
		
	}

	@Override
	public List<HashMap<String, Object>> selectClubPaneList(ClubVO vo) {
		// TODO Auto-generated method stub
		List<HashMap<String, Object>> list =mybatis.selectList("ClubPaneDAO.selectClubPaneList",vo); 
		return list;
	}

}
