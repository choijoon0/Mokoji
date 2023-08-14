package com.mokoji.service;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mokoji.dao.MemClubDAO;
import com.mokoji.dao.MemClubDAOImple;

@Service("MemClubService")
public class MemClubServiceImple implements MemClubService{

	@Autowired
	private MemClubDAOImple memClubDAOImple;
	
	@Override
	public int getMemCtCode(HashMap<String, Object> map) {
		// TODO Auto-generated method stub
		return memClubDAOImple.getMemCtCode(map);
	}

	@Override
	public void joinClub(HashMap<String, Object> map) {
		// TODO Auto-generated method stub
		memClubDAOImple.joinClub(map);
	}

	@Override
	public String checkMemClub(HashMap<String, Object> map) {
		// TODO Auto-generated method stub
		return memClubDAOImple.checkMemClub(map);
	}

}
