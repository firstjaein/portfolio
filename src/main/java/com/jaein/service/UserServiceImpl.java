package com.jaein.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.jaein.domain.UserVO;
import com.jaein.dto.LoginDTO;
import com.jaein.persistence.UserDAO;

@Service // service bean으로 등록
public class UserServiceImpl implements UserService {

	@Inject
	private UserDAO dao;

	public UserVO login(LoginDTO dto) throws Exception {
		return dao.login(dto);
	}

	@Override
	public void insertUser(UserVO vo) {
		dao.insertUser(vo);
	}
}