package com.mokoji.dao;

import java.util.List;

import com.mokoji.domain.CategoryVO;
import com.mokoji.domain.IndexVO;

public interface IndexDAO {
	
	public List<IndexVO> getClubList(IndexVO vo);
	public List<CategoryVO> getCateHighList(CategoryVO vo);
	public List<CategoryVO> getCateMidList(String cthigh_name);
}
