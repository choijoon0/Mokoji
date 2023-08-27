package com.mokoji.service;

import java.util.HashMap;
import java.util.List;

import com.mokoji.domain.ClubInstantVO;

public interface ClubInstantService {
	// 번개모임 불러오기
	public List<HashMap<String, Object>> getInstantList(HashMap<String, Object> map);

	// 번개보임 생성
	public int insertClubInstant(HashMap<String, Object> map);
}
