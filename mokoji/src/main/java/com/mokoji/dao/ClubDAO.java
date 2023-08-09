package com.mokoji.dao;

import java.util.List;

import com.mokoji.domain.ClubVO;
import com.mokoji.domain.IndexVO;

public interface ClubDAO {
	// 동호회 등록
	public int insertClub(IndexVO vo);

	// 동호회 리스트 가져오기
	public List<ClubVO> getClubList(ClubVO vo);

	// 하위 카테고리로 동호회 리스트
	public List<ClubVO> getClubListInterest(String ctmid_name);

	//상위 카테고리로 동호회 리스트
	public List<ClubVO> getHighClubListInterest(String cthigh_name);
}
