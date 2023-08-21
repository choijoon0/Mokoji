package com.mokoji.dao;

import java.util.HashMap;

public interface MemClubDAO {
	public int getMemCtCode(HashMap<String, Object> map);
	//동호회 검사
	public int checkClubJang(int memcode);
}
