package com.mokoji.service;

import java.util.List;

import com.mokoji.domain.CategoryVO;
import com.mokoji.domain.IndexVO;

public interface IndexService {

	public List<IndexVO> getClubList(IndexVO vo);
	public List<CategoryVO> getCateHighList(CategoryVO vo);
	public List<CategoryVO> getCateMidList(CategoryVO vo);
}
