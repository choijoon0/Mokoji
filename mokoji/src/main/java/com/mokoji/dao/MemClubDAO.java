package com.mokoji.dao;

import java.util.HashMap;

public interface MemClubDAO {
	public int getMemCtCode(HashMap<String, Object> map);
	public int joinClub(HashMap<String, Object> map);
}
