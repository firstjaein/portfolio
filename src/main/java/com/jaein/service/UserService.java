package com.jaein.service;

import com.jaein.domain.UserVO;
import com.jaein.dto.LoginDTO;

public interface UserService {

	public UserVO login(LoginDTO dto) throws Exception; // 로그인

	public void insertUser(UserVO vo); // 회원추가

}