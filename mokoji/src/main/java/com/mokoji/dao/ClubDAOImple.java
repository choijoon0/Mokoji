package com.mokoji.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mokoji.domain.ClubVO;

@Repository("ClubDAO")
public class ClubDAOImple implements ClubDAO {
	@Autowired
	private SqlSessionTemplate mybatis;

	// 동호회 등록
	@Override
	public int selectClubcode(ClubVO vo) {
		// TODO Auto-generated method stub
		return mybatis.selectOne("ClubDAO.selectClubcode");
	}
	@Override
	public int insertClub(HashMap<String, Object> map) {
		// TODO Auto-generated method stub
		return mybatis.insert("ClubDAO.insertClub", map);
		
	}
	@Override
	public int insertMemClub(HashMap<String, Object> map) {
		// TODO Auto-generated method stub
		return mybatis.insert("ClubDAO.insertMemClub", map);
	}

	// 동호회 리스트 가져오기
	@Override
	public List<ClubVO> getClubCard(ClubVO vo){
		return mybatis.selectList("ClubDAO.getClubCard", vo);
	}
	
	@Override
	public List<HashMap<String, Object>> getClubList(HashMap<String, Object> map) {
		// TODO Auto-generated method stub`
		List<HashMap<String, Object>> list = mybatis.selectList("ClubDAO.getClubList", map);
		return list;
	}

	// 분류별 동호회 리스트
	@Override
	public List<HashMap<String, Object>> getClubListInterest(HashMap<String, Object> map) {
		// TODO Auto-generated method stub
		return mybatis.selectList("ClubDAO.getSelectedClubList", map);
	}

	@Override
	public List<HashMap<String, Object>> getHighClubListInterest(HashMap<String, Object> map) {
		// TODO Auto-generated method stub
		return mybatis.selectList("ClubDAO.getSelectedHighClubList", map);
	}

	@Override
	public List<ClubVO> getOneClublist(ClubVO vo) {
		// TODO Auto-generated method stub
		List<ClubVO> list = mybatis.selectList("ClubDAO.getOneClublist", vo);
		
		return list;
	}


}
