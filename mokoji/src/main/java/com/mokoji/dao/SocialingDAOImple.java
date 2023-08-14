package com.mokoji.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mokoji.domain.SocialingVO;

@Repository("SocialingDAO")
public class SocialingDAOImple implements SocialingDAO{
	@Autowired
	private SqlSessionTemplate mybatis;
	
	//소셜링 등록
	@Override
	public int insertSocialing(HashMap<String, Object> map) {
		// TODO Auto-generated method stub
		return mybatis.insert("SocialingDAO.insertSocialing",map);
	}
	
	@Override
	public List<SocialingVO> getHighSocialListInterest(String cthigh_name){
		List<SocialingVO> list = mybatis.selectList("SocialingDAO.getHighSocialListInterest", cthigh_name);
		return list;
	}
	
	@Override
	public List<SocialingVO> getSocialListInterest(String ctmid_name){
		List<SocialingVO> list = mybatis.selectList("SocialingDAO.getSocialListInterest", ctmid_name);
		return list;
		
	}
	
	@Override
	public List<SocialingVO> getSocialList(SocialingVO VO){
		List<SocialingVO> list = mybatis.selectList("SocialingDAO.getSocialList");
		return list;
	}

}
