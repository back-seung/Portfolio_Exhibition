package com.exhibition.bbs;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.exhibition.Service.IF_User_Service;
import com.exhibition.VO.User_VO;

@Controller
public class UserController {
	@Inject
	IF_User_Service service;

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	// 회원가입 폼 이동
	@RequestMapping(value = "/userRegisterForm", method = RequestMethod.GET)
	public String RegisterForm() throws Exception {
		return "User/Register";
	}

	// 회원가입 처리
	@RequestMapping(value = "/userRegister", method = RequestMethod.POST)
	public String Register(User_VO userVO) throws Exception {
		service.userInsert(userVO);
		return "redirect:/login";
	}

	// 아이디 비밀번호 찾기 폼 이동
	@RequestMapping(value = "/userSearchIdPwForm", method = RequestMethod.GET)
	public String SearchIdPw() throws Exception {
		return "User/searchIdPw";
	}

	// 아이디 비밀번호 찾기 처리
	@RequestMapping(value = "/userSearch", method = RequestMethod.GET)
	public String userSearch(Model model, @RequestParam("name") String name) throws Exception {
		model.addAttribute("user", service.searchUser(name));
		return "User/searchIdPw";
	}

	// 마이페이지 폼 이동
	@RequestMapping(value = "/userMyPageForm", method = RequestMethod.GET)
	public String MyPageForm(Model model, @RequestParam("id") String id) throws Exception {
		model.addAttribute("user", service.selectOne(id));
		return "User/MyPage";
	}

	// 유저 수정 폼 이동
	@RequestMapping(value = "/userModForm", method = RequestMethod.GET)
	public String ModForm(Model model, @RequestParam("id") String id) throws Exception {
		model.addAttribute("user", service.selectOne(id));
		return "User/UserModForm";
	}

	// 유저 수정 처리 id를 통해 name변경
	@RequestMapping(value = "/userMod", method = RequestMethod.POST)
	public String userMod(HttpSession session, User_VO userVO) throws Exception {
		service.userMod(userVO);
		session.setAttribute("userId", userVO.getId());
		session.setAttribute("userName", userVO.getName());
		return "redirect:/userMyPageForm?id=" + userVO.getId();
	}

	// 유저 삭제 처리
	@RequestMapping(value = "/userDelete", method = RequestMethod.GET)
	public String userDel(@RequestParam("id") String id) throws Exception {
		service.userDel(id);
		return "redirect:/login";
	}
}
