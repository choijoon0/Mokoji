package com.mokoji.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mokoji.dao.IndexDAOImple;
import com.mokoji.domain.CategoryVO;
import com.mokoji.domain.IndexVO;

@Service("indexService")
public class IndexServiceImple implements IndexService{
	@Autowired
	private IndexDAOImple indexDAO;

	//동호회 리스트
	@Override
	public List<IndexVO> getClubList(IndexVO vo) {
		// TODO Auto-generated method stub
		return indexDAO.getClubList(vo);
	}


	
}
