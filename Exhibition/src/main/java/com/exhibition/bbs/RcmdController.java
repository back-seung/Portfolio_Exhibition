 package com.exhibition.bbs;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.exhibition.Service.IF_Rcmd_Service;
import com.exhibition.VO.Rcmd_VO;

@Controller
public class RcmdController {
	@Inject
	IF_Rcmd_Service service;
	
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	// Insert 폼 이동
	@RequestMapping(value = "/rcmdInsertForm", method = RequestMethod.GET)
	public String rcmdInsertForm() throws Exception {
		return "BBS/InsertForm";
	}
	
	// 삽입
	@RequestMapping(value = "/rcmdInsert", method = RequestMethod.POST)
	public String rcmdInsert(Rcmd_VO rcmdVO, MultipartFile file) throws Exception {
		service.insert(rcmdVO);
		return "redirect:/viewList";
	}
	
	// 리스트 가져오기
	@RequestMapping(value = "/viewList", method = RequestMethod.GET)
	public String viewList() throws Exception {
		return "BBS/selectAll";
	}
	
	// 상세 페이지 폼
	
	// 수정 폼
	
	// 수정
	
	// 삭제
}
