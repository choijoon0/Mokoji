package com.mokoji.dao;

import java.util.List;

import com.mokoji.domain.CategoryVO;
import com.mokoji.domain.IndexVO;

public interface IndexDAO {
	//동호회 리스트 가져오기
	public List<IndexVO> getClubList(IndexVO vo);
	
	//동호회 상위 카테고리 가져오기
	public List<CategoryVO> getCateHighList(CategoryVO vo);
	
	//동호회 하위 카테고리 가져오기
	public List<CategoryVO> getCateMidList(String cthigh_name);
}
