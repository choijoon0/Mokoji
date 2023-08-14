package com.mokoji.dao;

import java.util.HashMap;

import com.mokoji.domain.SocialingVO;

public interface SocialingDAO {
	//소셜링 등록
	public int insertSocialing(HashMap<String, Object> map);
}
