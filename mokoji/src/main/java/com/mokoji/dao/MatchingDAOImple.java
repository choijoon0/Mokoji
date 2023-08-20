package com.mokoji.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mokoji.domain.MatchingInfoVO;
import com.mokoji.domain.MatchingVO;


@Repository("MatchingDAO")
public class MatchingDAOImple implements MatchingDAO{
	
		@Autowired
		private SqlSessionTemplate mybatis;
		
		@Override
		//매칭 리스트 가져오기
		public List<HashMap<String, Object>> getMatchList(HashMap<String, Object> map){
			List<HashMap<String, Object>> list = mybatis.selectList("MatchingDAO.getMatchList", map);
			return list;
		}

		//매칭 등록
		@Override
		public int insertMatching(HashMap<String, Object> map) {
			// TODO Auto-generated method stub
			return mybatis.insert("MatchingDAO.insertMatching", map);
		}
		
		@Override
		public int insertMatchingInfo(HashMap<String, Object> map) {
			// TODO Auto-generated method stub
			return mybatis.insert("MatchingDAO.insertMatchingInfo", map);
		}

		@Override
		public int selectMatching(MatchingVO vo) {
			// TODO Auto-generated method stub
			return mybatis.selectOne("MatchingDAO.selectMatching");
		}
		
		//둥록된 매칭 참가하기
		@Override
		public int insertJoinMatching(HashMap<String, Object> map) {
			// TODO Auto-generated method stub
			return mybatis.insert("MatchingDAO.insertJoinMatching", map);
		}
		
		// 매칭 신청한 사람 목록
		@Override
		public List<HashMap<String, Object>> getAllMatch(HashMap<String, Object> map) {
			// TODO Auto-generated method stub
			List<HashMap<String, Object>> list = mybatis.selectList("MatchingDAO.getAllMatch", map);
			return list;
		}

		// 승인 확인
		@Override
		public void upMatching(MatchingInfoVO vo) {
			// TODO Auto-generated method stub
			mybatis.update("MatchingDAO.upMatching", vo);
		}

		// 승인 거절
		@Override
		public void delMatching(MatchingInfoVO vo) {
			// TODO Auto-generated method stub
			mybatis.update("MatchingDAO.delMatching", vo);
		}


}