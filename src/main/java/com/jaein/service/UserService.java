package com.jaein.service;

import com.jaein.domain.UserVO;
import com.jaein.dto.LoginDTO;

public interface UserService {

	public UserVO login(LoginDTO dto) throws Exception; // �α���

	public void insertUser(UserVO vo); // ȸ���߰�

}