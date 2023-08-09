package com.mokoji.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mokoji.dao.CategoryDAOImple;
import com.mokoji.domain.CategoryVO;

@Service("CategoryService")
public class CategoryServiceImple implements CategoryService {

	@Autowired
	private CategoryDAOImple CategoryDAO;

	// 상위 카테고리 리스트
	@Override
	public List<CategoryVO> getCateHighList(CategoryVO vo) {
		// TODO Auto-generated method stub
		return CategoryDAO.getCateHighList(vo);
	}

	// 하위 카테고리 리스트
	@Override
	public List<CategoryVO> getCateMidList(String cthigh_name) {
		// TODO Auto-generated method stub
		return CategoryDAO.getCateMidList(cthigh_name);
	}

	@Override
	public List<CategoryVO> getCateList(CategoryVO vo) {
		// TODO Auto-generated method stub
		return CategoryDAO.getCateList(vo);

	}

	@Override
	public List<CategoryVO> getCateList2(CategoryVO vo) {
		// TODO Auto-generated method stub
		return CategoryDAO.getCateList2(vo);

	}

}