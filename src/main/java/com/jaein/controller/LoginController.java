package com.jaein.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Locale;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import com.jaein.dto.LoginDTO;
import com.jaein.persistence.LoginDAO;

@Controller
@RequestMapping("/user/*")
public class LoginController {

	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);

	@Autowired
	LoginDAO loginDAO;

	// 로그인체크. DB와 비교하여 로그인 성공여부를 알려줌.
	@RequestMapping(value = "/loginCheck")
	public void loginCheck(Locale locale, Model model, LoginDTO loginDTO, HttpSession session,
			HttpServletResponse response) throws IOException {

		logger.info("loginCheck.....");
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();

		if ((loginDTO.getUserid() != null && !loginDTO.getUserid().equals("") && loginDTO.getUserpw() != null
				&& !loginDTO.getUserpw().equals(""))) {

			if (loginDAO.loginCheck(loginDTO)) {
				session.setAttribute("login", 0); // 로그인 성공시 세션
				logger.info("세션 추가 완료");
				session.setAttribute("id", loginDTO.getUserid());

				logger.info("현재 로그인한 아이디는:" + loginDTO.getUserid());

				// 로그인 성공시 게시판으로 이동
				out.println("<script>location.href='/sboard/listPage'; </script>");
				out.flush();
				out.close();

			}
			// 로그인 실패시
			if (loginDAO.loginCheck(loginDTO) == false) {
				out.println("<script>alert('로그인 정보를 확인하세요!'); </script>");
				out.println("<script>location.href='/'; </script>");
				out.flush();
				out.close();
			}
		}
	}

	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpSession session) {
		logger.info("logout...........");
		return "user/logout";
	}
}