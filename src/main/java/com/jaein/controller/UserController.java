package com.jaein.controller;

import javax.inject.Inject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import com.jaein.domain.UserVO;
import com.jaein.service.UserService;

@Controller
public class UserController {
	@Inject
	private UserService service;
	private static final Logger logger = LoggerFactory.getLogger(UserController.class);

	@RequestMapping(value = "user/signUp", method = RequestMethod.GET)
	public void insertUserGET() {
		logger.info("signUpGET.....");
	}

	@RequestMapping(value = "user/signUp", method = RequestMethod.POST)
	public String insertUserPOST(UserVO vo, RedirectAttributes rttr) throws Exception {
		logger.info("loginPOST.....");
		service.insertUser(vo);
		String msg = "SUCCESS";
		rttr.addFlashAttribute("msg", "SUCCESS");
		return "redirect:/";
	}
}