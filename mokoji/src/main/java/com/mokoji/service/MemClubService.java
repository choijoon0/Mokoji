package com.mokoji.service;

import java.util.HashMap;

public interface MemClubService {
	public int getMemCtCode(HashMap<String, Object> map);
	
	//동호회장인지 확인
	public int checkClubJang(int memcode);
}
