package com.jaein.persistence;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jaein.controller.LoginController;
import com.jaein.domain.UserVO;
import com.jaein.dto.LoginDTO;

import common.util.AesCryto;
import common.util.SHA256Cryto;

@Repository
public class LoginImpl implements LoginDAO {
	
	SHA256Cryto sha256 = new SHA256Cryto();
	
	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);
	@Autowired
	private SqlSession sql;

	@Override
	public boolean loginCheck(LoginDTO loginDTO) {
		
		//로그인 패스워드에 사용 
		try {
			loginDTO.setUserpw(sha256.encryptSha256(loginDTO.getUserpw()));
		} catch (Exception e) {
			e.printStackTrace();
		}

		int count = Integer.parseInt(sql.selectOne("loginCheck", loginDTO).toString());
		logger.info("loginCheck....");
		if (count > 0) {
		   return true;
		}  return false;
	}
}