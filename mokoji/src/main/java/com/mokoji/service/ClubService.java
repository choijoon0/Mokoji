package com.mokoji.service;

import java.util.List;

import com.mokoji.domain.IndexVO;

public interface ClubService {
	//동호회 등록
	public int insertClub(IndexVO vo);
	
	//동호회 리스트 가져오기
	public List<IndexVO> getClubList(IndexVO vo);
}
