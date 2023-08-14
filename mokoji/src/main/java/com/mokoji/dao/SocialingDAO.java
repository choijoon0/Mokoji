package com.mokoji.dao;

import java.util.HashMap;
import java.util.List;

import com.mokoji.domain.SocialingVO;

public interface SocialingDAO {
	//소셜링 등록
	public int insertSocialing(HashMap<String, Object> map);
	
	public List<SocialingVO> getHighSocialListInterest(String cthigh_name);
	
	
	public List<SocialingVO> getSocialListInterest(String ctmid_name);
	
	public List<SocialingVO> getSocialList(SocialingVO vo);
}
