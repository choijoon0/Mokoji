package com.mokoji.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mokoji.domain.CategoryVO;
import com.mokoji.domain.IndexVO;




@Repository("indexDAO")
public class IndexDAOImple implements IndexDAO {
	
	@Autowired
	private SqlSessionTemplate mybatis;

	//동호회 리스트 가져오기
	@Override
	public List<IndexVO> getClubList(IndexVO vo) {
		// TODO Auto-generated method stub
		List<IndexVO> list = mybatis.selectList("IndexDAO.getClubList", vo);
		return list;
	}

	//동호회 상위 카테고리 가져오기
	@Override
	public List<CategoryVO> getCateHighList(CategoryVO vo) {
		// TODO Auto-generated method stub
		List<CategoryVO> list = mybatis.selectList("IndexDAO.getCateHighList", vo);
		return list;
	}

	//동호회 하위 카테고리 가져오기
	@Override
	public List<CategoryVO> getCateMidList(String cthigh_name) {
		// TODO Auto-generated method stub
		List<CategoryVO> list = mybatis.selectList("IndexDAO.getCateMidList", cthigh_name);
		return list;
	}

}
