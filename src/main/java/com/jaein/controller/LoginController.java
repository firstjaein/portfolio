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

	// �α���üũ. DB�� ���Ͽ� �α��� �������θ� �˷���.
	@RequestMapping(value = "/loginCheck")
	public void loginCheck(Locale locale, Model model, LoginDTO loginDTO, HttpSession session,
			HttpServletResponse response) throws IOException {

		logger.info("loginCheck.....");
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();

		if ((loginDTO.getUserid() != null && !loginDTO.getUserid().equals("") && loginDTO.getUserpw() != null
				&& !loginDTO.getUserpw().equals(""))) {

			if (loginDAO.loginCheck(loginDTO)) {
				session.setAttribute("login", 0); // �α��� ������ ����
				logger.info("���� �߰� �Ϸ�");
				session.setAttribute("id", loginDTO.getUserid());

				logger.info("���� �α����� ���̵��:" + loginDTO.getUserid());

				// �α��� ������ �Խ������� �̵�
				out.println("<script>location.href='/sboard/listPage'; </script>");
				out.flush();
				out.close();

			}
			// �α��� ���н�
			if (loginDAO.loginCheck(loginDTO) == false) {
				out.println("<script>alert('�α��� ������ Ȯ���ϼ���!'); </script>");
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