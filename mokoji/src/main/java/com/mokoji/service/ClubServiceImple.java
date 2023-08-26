package com.mokoji.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mokoji.dao.ClubDAOImple;
import com.mokoji.domain.ClubVO;
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
	
	
	
	
	//동호회 리스트
	@Override
	public List<ClubVO> getClubList(ClubVO vo) {
		// TODO Auto-generated method stub
		return clubdao.getClubList(vo);
	}



	//동호회 관심사 리스트 가져오기
	@Override
	public List<ClubVO> getClubListInterest(String ctmid_name) {
		// TODO Auto-generated method stub
		return clubdao.getClubListInterest(ctmid_name);
	}




	@Override
	public List<ClubVO> getHighClubListInterest(String cthigh_name) {
		// TODO Auto-generated method stub
		return clubdao.getHighClubListInterest(cthigh_name);
	}




	@Override
	public List<ClubVO> getOneClublist(ClubVO vo) {
		// TODO Auto-generated method stub
		return clubdao.getOneClublist(vo);
	}




	@Override
	public int getClubCode(HashMap<String, Object> map) {
		// TODO Auto-generated method stub
		return clubdao.getClubCode(map);
	}






}