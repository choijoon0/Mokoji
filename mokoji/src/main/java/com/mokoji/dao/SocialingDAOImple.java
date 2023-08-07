package com.mokoji.dao;

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
	public void insertSocialing(SocialingVO vo) {
		// TODO Auto-generated method stub
		mybatis.insert("SocialingDAO.insertSocialing",vo);
	}

}
