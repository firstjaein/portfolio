package com.jaein.persistence;

import com.jaein.domain.UserVO;
import com.jaein.dto.LoginDTO;

public interface UserDAO {

	public UserVO login(LoginDTO dto) throws Exception;

	public void insertUser(UserVO vo);
}