package com.mokoji.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mokoji.dao.ClubInstantDAOImple;

@Service("ClubInstantService")
public class ClubInstantServiceImple implements ClubInstantService{

	@Autowired
	private ClubInstantDAOImple clubInstantDAO;
	
	@Override
	public List<HashMap<String, Object>> getInstantList(HashMap<String, Object> map){
		return clubInstantDAO.getInstantList(map);
	}

}
