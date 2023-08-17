package com.mokoji.service;

import java.util.HashMap;
import java.util.List;

import com.mokoji.domain.ClubPaneVO;
import com.mokoji.domain.ClubVO;

public interface ClubPaneService {
	public void insertClubPane(HashMap<String, Object> map);
	public List<HashMap<String, Object>> selectClubPaneList(ClubVO vo);
}
