package com.mokoji.dao;

import java.util.HashMap;
import java.util.List;

public interface ClubPaneRepleDAO {
	
	//댓글 등록
	public void insertComment(HashMap<String, Object> map);
	
	//댓글 목록 가져오기
	public List<HashMap<String, Object>> getCommentList(int cp_code);
}
