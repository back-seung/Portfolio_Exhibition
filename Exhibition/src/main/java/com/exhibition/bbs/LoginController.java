package com.exhibition.bbs;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.exhibition.Service.IF_User_Service;
import com.exhibition.VO.User_VO;

@Controller
public class LoginController {
	@Inject
	IF_User_Service userService;

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login() throws Exception {
		return "login/login";
	}

	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpSession session, HttpServletRequest request) throws Exception {
		session = request.getSession();
		session.invalidate();
		return "redirect:/";
	}

	@RequestMapping(value = "/loginProcess", method = RequestMethod.POST)
	public String loginPro(User_VO userVO, HttpSession session, HttpServletRequest request) throws Exception {
		// 절차
		// 1. ID & PW를 받아온다
		// Parameter User_VO userVO 추가
		// 2. DB를 조회하여 회원가입 여부를 확인한다.
		String targetUrl = "";
		User_VO tempUser = userService.selectOne(userVO.getId());
		// 2-1 SELECT * FROM user WHERE id = ? AND pw = ? = 해킹 노출 위험 SQL Injection
		// 2-2 SELECT * FROM user WHERE id = ? = 컨트롤러에서 pw 비교
		// 3. [2-2] ? 컨트롤러에서 null일 경우(!= user) : pw 비교
		if (tempUser == null) { // != User 다시 로그인
			targetUrl = "login/login";
			System.out.println("null");
		} else { // == User
			if (tempUser.getPw().equals(userVO.getPw())) { // 비밀번호 일치
				session = request.getSession();
				session.setAttribute("userName", tempUser.getName());
				session.setAttribute("userId", tempUser.getId());
				targetUrl = "redirect:/";
			} else { // 비밀번호 불일치
				targetUrl = "login/login";
			}
		}
		// 4. 3번에서 pw 일치시 회원 인정 및 세션 등록
		System.out.println("접속합니다.");
		return targetUrl;
	}
}
