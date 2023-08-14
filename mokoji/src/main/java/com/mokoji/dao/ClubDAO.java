package com.mokoji.dao;

import java.util.HashMap;
import java.util.List;

import com.mokoji.domain.ClubVO;

public interface ClubDAO {
	// 동호회 등록
	public int selectClubcode(ClubVO vo);
	public int insertClub(HashMap<String, Object> map);
	public int insertMemClub(HashMap<String, Object> map);

	// 동호회 리스트 가져오기
	public List<ClubVO> getClubList(ClubVO vo);

	// 하위 카테고리로 동호회 리스트
	public List<ClubVO> getClubListInterest(String ctmid_name);

	//상위 카테고리로 동호회 리스트
	public List<ClubVO> getHighClubListInterest(String cthigh_name);
}
