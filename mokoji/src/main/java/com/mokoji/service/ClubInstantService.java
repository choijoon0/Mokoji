package com.mokoji.service;

import java.util.HashMap;
import java.util.List;

import com.mokoji.domain.ClubInstantVO;

public interface ClubInstantService {
		public List<HashMap<String, Object>> getInstantList(HashMap<String, Object> map);
}
