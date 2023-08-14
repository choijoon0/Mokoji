package com.mokoji.dao;

import java.util.HashMap;

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

}
