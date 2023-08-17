package com.mokoji.dao;

import java.util.HashMap;
import java.util.List;

import com.mokoji.domain.ClubPaneVO;
import com.mokoji.domain.ClubVO;

public interface ClubPaneDAO {
	
	public List<HashMap<String, Object>> selectClubPaneList(ClubVO vo);
	public void insertClubPane(HashMap<String, Object> map);
}
