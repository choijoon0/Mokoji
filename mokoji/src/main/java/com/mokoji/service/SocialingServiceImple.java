package com.mokoji.service;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mokoji.dao.SocialingDAOImple;
import com.mokoji.domain.CategoryVO;
import com.mokoji.domain.MemberVO;
import com.mokoji.domain.SocialingVO;
@Service("socialingService")
public class SocialingServiceImple implements SocialingService{

	@Autowired
	private SocialingDAOImple socialingDAO;
	
	@Override
	public int insertSocialing(HashMap<String, Object> map) {
		// TODO Auto-generated method stub
		return socialingDAO.insertSocialing(map);
	}

}
