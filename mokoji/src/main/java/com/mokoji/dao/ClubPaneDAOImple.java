package com.mokoji.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.mokoji.domain.ClubPaneVO;
import com.mokoji.domain.ClubVO;

@Repository("ClubPaneDAO")
public class ClubPaneDAOImple implements ClubPaneDAO{

	private SqlSessionTemplate mybatis;
	
	@Override
	public int insertClubPane(HashMap<String, Object> map) {
		// TODO Auto-generated method stub
		return mybatis.insert("ClubPaneDAO.insertClubPane",map);
	}

	@Override
	public List<ClubPaneVO> selectClubPaneList(ClubVO vo) {
		// TODO Auto-generated method stub
		List<ClubPaneVO> list =mybatis.selectList("ClubPaneDAO.selectClubPaneList",vo); 
		return list;
	}

}
