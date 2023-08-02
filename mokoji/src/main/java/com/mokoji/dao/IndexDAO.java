package com.mokoji.dao;

import java.util.List;

import com.mokoji.domain.IndexVO;

public interface IndexDAO {
	
	public List<IndexVO> getClubList(IndexVO vo);
}
