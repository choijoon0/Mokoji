package com.mokoji.service;

import java.util.HashMap;

public interface MemClubService {
	public int getMemCtCode(HashMap<String, Object> map);
	//동호회가입
	public void joinClub(HashMap<String, Object> map);
	//동호회가입확인
	public String checkMemClub(HashMap<String, Object> map);
}
