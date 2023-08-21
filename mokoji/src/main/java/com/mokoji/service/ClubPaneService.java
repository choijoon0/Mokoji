package com.mokoji.service;

import java.util.HashMap;
import java.util.List;

import com.mokoji.domain.ClubPaneVO;
import com.mokoji.domain.ClubVO;

public interface ClubPaneService {
	public void insertClubPane(HashMap<String, Object> map);
	public List<HashMap<String, Object>> selectClubPaneList(ClubVO vo);
	//하트 클릭 시 증가
	public void updateLikes(int cp_code);
	//하트 클릭 후 리스트 목록 불러오기
	public List<ClubPaneVO> getOneClubPane(int cp_code);
	
	//하트 클릭 시 감소
	public void downHeart(int cp_code);
}
