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

	//하트 클릭 시 증가
	@Override
	public void updateHeart(int cp_code) {
		// TODO Auto-generated method stub
		mybatis.update("ClubPaneDAO.updateHeart", cp_code);
	}

	//하트 클릭 후 리스트
	@Override
	public List<ClubPaneVO> getOneClubPane(int cp_code) {
		// TODO Auto-generated method stub
		return mybatis.selectList("ClubPaneDAO.getOneClubPane",cp_code);
	}
	//하트 클릭 시 감소
	@Override
	public void downHeart(int cp_code) {
		// TODO Auto-generated method stub
		mybatis.update("ClubPaneDAO.downHeart", cp_code);
	}

}