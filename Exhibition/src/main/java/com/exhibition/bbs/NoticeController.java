package com.exhibition.bbs;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class NoticeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	// 공지 창 이동
	@RequestMapping(value = "/noticeForm", method = RequestMethod.GET)
	public String noticeForm() throws Exception {
		return "Notice/noticeForm";
	}

	// 공지 리스트 처리
	
	// 공지 입력 창 이동
	@RequestMapping(value = "noticeInputForm", method = RequestMethod.GET)
	public String noticeInputForm() throws Exception {
		return "Notice/noticeInputForm";
	}
	// 공지 입력 처리

	// 공지 수정 창 이동
	@RequestMapping(value = "/noticeModForm", method = RequestMethod.GET)
	public String noticeModForm() throws Exception {
		return "Notice/noticeUpdateForm";
	}
	// 공지 수정 처리

	// 공지 삭제 처리
}
