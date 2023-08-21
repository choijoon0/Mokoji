package com.mokoji.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mokoji.dao.ClubPaneRepleDAO;
import com.mokoji.dao.ClubPaneRepleDAOImple;

@Service("clubPaneRepleService")
public class ClubPaneRepleServieImple implements ClubPaneRepleService{

	@Autowired
	private ClubPaneRepleDAOImple clubPaneRepleDAO;
	
	//댓글 등록
	@Override
	public void insertComment(HashMap<String, Object> map) {
		// TODO Auto-generated method stub
		clubPaneRepleDAO.insertComment(map);
	}

	//댓글 목록 가져오기
	@Override
	public List<HashMap<String, Object>> getCommentList(int cp_code) {
		// TODO Auto-generated method stub
		return clubPaneRepleDAO.getCommentList(cp_code);
	}
	
}
