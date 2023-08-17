package com.mokoji.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mokoji.dao.MemClubDAO;
import com.mokoji.dao.MemClubDAOImple;
import com.mokoji.domain.ClubVO;
import com.mokoji.domain.MemClubVO;

@Service("MemClubService")
public class MemClubServiceImple implements MemClubService{

	@Autowired
	private MemClubDAOImple memClubDAOImple;
	
	@Override
	public int getMemCtCode(HashMap<String, Object> map) {
		// TODO Auto-generated method stub
		return memClubDAOImple.getMemCtCode(map);
	}

	@Override
	public void joinClub(HashMap<String, Object> map) {
		// TODO Auto-generated method stub
		memClubDAOImple.joinClub(map);
	}

	@Override
	public int checkMcCode(HashMap<String, Object> map) {
		// TODO Auto-generated method stub
		return memClubDAOImple.checkMcCode(map);
	}
	
	//대기 중 인원들 가져오기
	@Override
	public List<HashMap<String, Object>> getAllMemClub(ClubVO vo) {
		// TODO Auto-generated method stub
		return memClubDAOImple.getAllMemClub(vo);
	}

	//승인 확인
	@Override
	public void upMemclub(MemClubVO vo) {
		// TODO Auto-generated method stub
		memClubDAOImple.upMemclub(vo);
	}

	//승인 거절
	@Override
	public void delMemClub(MemClubVO vo) {
		// TODO Auto-generated method stub
		memClubDAOImple.delMemClub(vo);
	}

}
