package com.mokoji.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mokoji.dao.ClubPaneDAOImple;
import com.mokoji.domain.ClubPaneVO;
import com.mokoji.domain.ClubVO;

@Service("ClubPaneService")
public class ClubPaneServiceImple implements ClubPaneService{
	
	@Autowired
	private ClubPaneDAOImple clubpaneDAO;

	//동호회 게시판 등록
	@Override
	public void insertClubPane(HashMap<String, Object> map) {
		// TODO Auto-generated method stub
		clubpaneDAO.insertClubPane(map);
	}

	@Override
	public List<HashMap<String, Object>> selectClubPaneList(ClubVO vo) {
		// TODO Auto-generated method stub
		return clubpaneDAO.selectClubPaneList(vo);
	}

	//하트 클릭 시 증가
	@Override
	public void updateLikes(int cp_code) {
		// TODO Auto-generated method stub
		clubpaneDAO.updateHeart(cp_code);
	}

	//하트 클릭 후 리스트 불러오기
	@Override
	public List<ClubPaneVO> getOneClubPane(int cp_code) {
		// TODO Auto-generated method stub
		return clubpaneDAO.getOneClubPane(cp_code);
	}

	//하트 클릭 시 감소
	@Override
	public void downHeart(int cp_code) {
		// TODO Auto-generated method stub
		clubpaneDAO.downHeart(cp_code);
	}

}
