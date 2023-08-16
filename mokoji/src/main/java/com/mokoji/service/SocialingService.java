package com.mokoji.service;

import java.util.HashMap;
import java.util.List;
import com.mokoji.domain.SocialingVO;

public interface SocialingService {
	//소셜링 등록
	public int insertSocialing(HashMap<String, Object> map);
	
	// 하위 카테고리로 소렬링 리스트 가져오기
	public List<SocialingVO> getHighSocialListInterest(String cthigh_name);
	
	//상위 카테고리로 동호회 리스트 가져오기
	public List<SocialingVO> getSocialListInterest(String ctmid_name);
	
	public List<SocialingVO> getSocialList(SocialingVO vo);
}
