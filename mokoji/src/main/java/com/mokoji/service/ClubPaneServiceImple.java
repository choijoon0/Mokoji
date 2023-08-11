package com.mokoji.service;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mokoji.dao.ClubPaneDAOImple;

@Service("ClubPaneService")
public class ClubPaneServiceImple implements ClubPaneService{
	
	@Autowired
	private ClubPaneDAOImple clubpaneDAO;

	@Override
	public int insertClubPane(HashMap<String, Object> map) {
		// TODO Auto-generated method stub
		return clubpaneDAO.insertClubPane(map);
	}

}
