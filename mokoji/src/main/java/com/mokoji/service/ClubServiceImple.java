package com.mokoji.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mokoji.dao.ClubDAOImple;
import com.mokoji.domain.IndexVO;


@Service("clubService")
public class ClubServiceImple implements ClubService{
	
	@Autowired
	private ClubDAOImple clubdao;
	

	//동호회 등록
	@Override
	public int insertClub(IndexVO vo) {
		// TODO Auto-generated method stub
		return clubdao.insertClub(vo);
	}
	
	
	//동호회 리스트 가져오기
	@Override
	public List<IndexVO> getClubList(IndexVO vo) {
		// TODO Auto-generated method stub
		return null;
	}

}
