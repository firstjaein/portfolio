package com.jaein.persistence;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.jaein.domain.UserVO;
import com.jaein.dto.LoginDTO;

import common.util.AesCryto;
import common.util.SHA256Cryto;

@Repository
public class UserDAOImpl implements UserDAO {

	AesCryto aesCryto = new AesCryto();
	SHA256Cryto sha256 = new SHA256Cryto();

	@Inject
	private SqlSession session;
	private static String namespace = "com.jaein.mapper.UserMapper";

	public UserVO login(LoginDTO dto) throws Exception {
		UserVO uservo;
		uservo = session.selectOne(namespace + ".login", dto);
		uservo.setUserpw(aesCryto.aesDecrypt(uservo.getUserpw()));
		return uservo;
	}

	public void insertUser(UserVO vo) {
		String tempUserEmail = "";
		tempUserEmail = vo.getUseremail();
		try {
			vo.setUseremail((aesCryto.aesEncrypt(tempUserEmail)));
			vo.setUserpw(sha256.encryptSha256(vo.getUserpw()));
		} catch (Exception e) {
			e.printStackTrace();
		}
		session.insert(namespace + ".signUp", vo);
	}
}