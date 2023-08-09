package com.mokoji.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mokoji.domain.ClubVO;
import com.mokoji.domain.IndexVO;

@Repository("ClubDAO")
public class ClubDAOImple implements ClubDAO{
	@Autowired
	private SqlSessionTemplate mybatis;

	
	//동호회 등록
	@Override
	public int insertClub(IndexVO vo) {
		// TODO Auto-generated method stub
		return mybatis.insert("ClubDAO.insertClub", vo);
	}
	
	//동호회 리스트 가져오기
	@Override
	public List<ClubVO> getClubList(ClubVO vo) {
		// TODO Auto-generated method stub`
		List<ClubVO> list = mybatis.selectList("ClubDAO.getClubList", vo);
		return list;
	}

	//분류별 동호회 리스트
	@Override
	public List<ClubVO> getClubListInterest(String ctmid_name) {
		// TODO Auto-generated method stub
		  return mybatis.selectList("ClubDAO.getSelectedClubList", ctmid_name);
	}

}
