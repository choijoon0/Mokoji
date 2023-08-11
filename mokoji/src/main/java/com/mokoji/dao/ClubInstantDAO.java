package com.mokoji.dao;

import java.util.HashMap;
import java.util.List;

import com.mokoji.domain.ClubInstantVO;

public interface ClubInstantDAO {
	public List<HashMap<String, Object>> getInstantList(HashMap<String, Object> map);
}
