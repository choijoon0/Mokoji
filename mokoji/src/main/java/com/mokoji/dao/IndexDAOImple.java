package com.mokoji.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.mokoji.domain.IndexVO;




@Repository("indexDAO")
public class IndexDAOImple implements IndexDAO {
	
	@Autowired
	private SqlSessionTemplate mybatis;


	@Override
	public List<IndexVO> getClubList(IndexVO vo) {
		// TODO Auto-generated method stub
		List<IndexVO> list = mybatis.selectList("IndexDAO.getClubList", vo);
		return list;
	}

}
