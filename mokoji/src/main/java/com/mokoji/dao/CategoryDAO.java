package com.mokoji.dao;

import java.util.List;

import com.mokoji.domain.CategoryVO;

public interface CategoryDAO {
   public List<CategoryVO> getCateHighList(CategoryVO vo);
   public List<CategoryVO> getCateMidList(String cthigh_name);
   public List<CategoryVO> getCateList(CategoryVO vo);
   public List<CategoryVO> getCateList2(CategoryVO vo);
   public String getCateMidName(int ctmid_code);	
}