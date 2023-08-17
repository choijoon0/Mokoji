package com.mokoji.dao;

import java.util.HashMap;
import java.util.List;

import com.mokoji.domain.ClubVO;
import com.mokoji.domain.MemClubVO;

public interface MemClubDAO {
	public int getMemCtCode(HashMap<String, Object> map);
	public int joinClub(HashMap<String, Object> map);
	public int checkMcCode(HashMap<String, Object> map);
	public List<HashMap<String, Object>> getAllMemClub(ClubVO vo);
	//승인 확인
	public void upMemclub(MemClubVO vo);
	
	//승인 거절
	public void delMemClub(MemClubVO vo);
}
