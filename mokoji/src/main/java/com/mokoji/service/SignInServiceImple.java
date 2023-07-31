package com.mokoji.service;

import org.springframework.stereotype.Service;

import com.mokoji.dao.SignInDAOImple;
import com.mokoji.domain.SignInVO;

@Service("signInService")
public class SignInServiceImple implements SignInService{

	private SignInDAOImple signInDAO;
	
	@Override
	public int checkMember(SignInVO vo) {
		return signInDAO.checkMember(vo);
	}

}
