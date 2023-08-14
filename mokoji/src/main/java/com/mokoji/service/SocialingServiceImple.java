package com.mokoji.service;

import java.util.HashMap;
import java.util.List;

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
	// 하위 카테고리로 소렬링 리스트 가져오기
	public List<SocialingVO> getHighSocialListInterest(String cthigh_name){
		return socialingDAO.getHighSocialListInterest(cthigh_name);
	}
	
	//상위 카테고리로 동호회 리스트 가져오기
	public List<SocialingVO> getSocialListInterest(String ctmid_name){
		return socialingDAO.getSocialListInterest(ctmid_name);
		
	}
	
	public List<SocialingVO> getSocialList(SocialingVO vo){
		return socialingDAO.getSocialList(vo);
	}

}
