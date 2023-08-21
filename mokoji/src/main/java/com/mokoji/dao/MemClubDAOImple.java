package com.mokoji.dao;

import java.util.HashMap;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("MemClubDAO")
public class MemClubDAOImple implements MemClubDAO{

	@Autowired
	private SqlSessionTemplate mybatis;
	
	@Override
	public int getMemCtCode(HashMap<String, Object> map) {
		// TODO Auto-generated method stub
		
		Integer cnt = mybatis.selectOne("MemClubDAO.getMemCtCode", map);
		if(cnt == null) {
			cnt=0;
		}
		return cnt;
	}
	
	//동호회장 확인
		@Override
		public int checkClubJang(int memcode) {
			// TODO Auto-generated method stub
			Integer chnum = mybatis.selectOne("MemClubDAO.checkClubJang",memcode);
			if(chnum==null) {
				chnum = 0;
			}
			return chnum;
		}

}
