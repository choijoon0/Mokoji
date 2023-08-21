package com.mokoji.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mokoji.dao.MatchingDAOImple;
import com.mokoji.domain.ClubVO;
import com.mokoji.domain.MatchingInfoVO;
import com.mokoji.domain.MatchingVO;

@Service("matchingService")
public class MatchingServiceImple implements MatchingService{
	
	@Autowired
	private MatchingDAOImple matchingDAO;

	@Override
	public List<HashMap<String, Object>> getMatchList(HashMap<String, Object> map) {
		// TODO Auto-generated method stub
		return matchingDAO.getMatchList(map);
	}

	@Override
	public int insertMatching(HashMap<String, Object> map) {
		// TODO Auto-generated method stub
		return matchingDAO.insertMatching(map);
	}
	
	@Override
	public int insertMatchingInfo(HashMap<String, Object> map) {
		// TODO Auto-generated method stub
		return matchingDAO.insertMatchingInfo(map);
	}
	
	@Override
	public int selectMatching(MatchingVO vo) {
		// TODO Auto-generated method stub
		return matchingDAO.selectMatching(vo);
	}

	@Override
	public int insertJoinMatching(HashMap<String, Object> map) {
		// TODO Auto-generated method stub
		return matchingDAO.insertJoinMatching(map);
	}

	@Override
	public List<HashMap<String, Object>> getAllMatch(HashMap<String, Object> map) {
		// TODO Auto-generated method stub
		return matchingDAO.getAllMatch(map);
	}

	@Override
	public void upMatching(MatchingInfoVO vo) {
		// TODO Auto-generated method stub
		matchingDAO.upMatching(vo);
	}

	@Override
	public void delMatching(MatchingInfoVO vo) {
		// TODO Auto-generated method stub
		matchingDAO.delMatching(vo);
	}
	
	
}
