package com.mokoji.dao;

import java.util.HashMap;
import java.util.List;

import com.mokoji.domain.ClubInstantVO;

public interface ClubInstantDAO {
	//번개모임 리스트 
	public List<HashMap<String, Object>> getInstantList(HashMap<String, Object> map);
	
	//번개모임 인서트
	public int insertClubInstant(HashMap<String, Object> map);
}
