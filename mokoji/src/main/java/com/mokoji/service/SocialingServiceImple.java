package com.mokoji.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mokoji.dao.SocialingDAOImple;
import com.mokoji.domain.SocialingVO;
@Service("socialingService")
public class SocialingServiceImple implements SocialingService{

	@Autowired
	private SocialingDAOImple socialingDAO;
	
	@Override
	public void insertSocialing(SocialingVO vo) {
		// TODO Auto-generated method stub
		socialingDAO.insertSocialing(vo);
	}

}
