package com.mokoji.dao;

import java.util.HashMap;
import java.util.List;

import com.mokoji.domain.ClubPaneVO;
import com.mokoji.domain.ClubVO;

public interface ClubPaneDAO {
	
	public List<HashMap<String, Object>> selectClubPaneList(ClubVO vo);
	public void insertClubPane(HashMap<String, Object> map);
	//하트 업데이트
	public void updateHeart(int cp_code);
	
	//cpcode로 pane
	public List<ClubPaneVO> getOneClubPane(int cp_code);
	
	//하트 클릭 시 감소
	public void downHeart(int cp_code);
}
