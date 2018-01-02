package com.jaein.persistence;

import com.jaein.dto.LoginDTO;

public interface LoginDAO {

	public boolean loginCheck(LoginDTO loginDTO);
}
