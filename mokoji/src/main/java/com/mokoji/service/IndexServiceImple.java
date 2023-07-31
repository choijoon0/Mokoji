package com.mokoji.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mokoji.dao.IndexDAOImple;
import com.mokoji.domain.IndexVO;

@Service("indexService")
public class IndexServiceImple implements IndexService{
	@Autowired
	private IndexDAOImple indexDAO;

	@Override
	public void insertMember(IndexVO vo) {
		// TODO Auto-generated method stub
		indexDAO.insertMember(vo);
	}
	

	
}
