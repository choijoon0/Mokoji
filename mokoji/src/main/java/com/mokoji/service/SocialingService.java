package com.mokoji.service;

import java.util.HashMap;

import com.mokoji.domain.SocialingVO;

public interface SocialingService {
	//소셜링 등록
	public int insertSocialing(HashMap<String, Object> map);
}
