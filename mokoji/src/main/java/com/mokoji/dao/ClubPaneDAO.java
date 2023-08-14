package com.mokoji.dao;

import java.util.HashMap;
import java.util.List;

import com.mokoji.domain.ClubPaneVO;
import com.mokoji.domain.ClubVO;

public interface ClubPaneDAO {
	public int insertClubPane(HashMap<String, Object> map);
	public List<ClubPaneVO> selectClubPaneList(ClubVO vo);
}
