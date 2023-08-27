package com.mokoji.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mokoji.dao.ClubInstantDAOImple;
import com.mokoji.domain.ClubInstantVO;

@Service("ClubInstantService")
public class ClubInstantServiceImple implements ClubInstantService{

	@Autowired
	private ClubInstantDAOImple clubInstantDAO;
	
	//번개모임 불러오기
	@Override
	public List<HashMap<String, Object>> getInstantList(HashMap<String, Object> map){
		return clubInstantDAO.getInstantList(map);
	}

	//번개모임 등록
	@Override
	public int insertClubInstant(HashMap<String, Object> map) {
		// TODO Auto-generated method stub
		return clubInstantDAO.insertClubInstant(map);
	}
}
