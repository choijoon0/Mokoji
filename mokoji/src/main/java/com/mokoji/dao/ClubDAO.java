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
	public List<ClubVO> getClubCard(ClubVO vo);
	
	public List<HashMap<String, Object>> getClubList(HashMap<String, Object> map);

	// 하위 카테고리로 동호회 리스트
	public List<HashMap<String, Object>> getClubListInterest(HashMap<String, Object> map);

	// 상위 카테고리로 동호회 리스트
	public List<HashMap<String, Object>> getHighClubListInterest(HashMap<String, Object> map);

	// 동호회코드로 동호회 1개
	public List<ClubVO> getOneClublist(ClubVO vo);

}
