package com.exhibition.bbs;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.exhibition.Service.IF_Notice_Service;
import com.exhibition.VO.Notice_VO;

@Controller
public class NoticeController {

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	@Inject
	IF_Notice_Service service;

	// 공지 리스트 처리
	@RequestMapping(value = "/noticeList", method = RequestMethod.GET)
	public String noticeList(Model model, Notice_VO nVO) throws Exception {
		model.addAttribute("ntcList", service.selectAll(nVO));
		System.out.println("List 불러오기 정상 작동");
		return "Notice/noticeForm";
	}

	// 공지 입력 창 이동
	@RequestMapping(value = "noticeInputForm", method = RequestMethod.GET)
	public String noticeInputForm() throws Exception {
		return "Notice/noticeInputForm";
	}

	// 공지 입력 처리
	@RequestMapping(value = "noticeInput", method = RequestMethod.POST)
	public String noticeInput(Notice_VO nVO) throws Exception {
		service.noticeInput(nVO);
		return "redirect:/noticeList";
	}

	// 공지 수정 창 이동
	@RequestMapping(value = "/noticeModForm", method = RequestMethod.GET)
	public String noticeModForm(Model model, @RequestParam("n_no") int n_no) throws Exception {
		model.addAttribute("ntc", service.selectOne(n_no));
		return "Notice/noticeUpdateForm";
	}

	// 공지 수정 처리
	@RequestMapping(value = "/noticeMod", method = RequestMethod.POST)
	public String noticeMod(Notice_VO nVO) throws Exception {
		service.noticeMod(nVO);
		return "redirect:/noticeList";
	}

	// 공지 삭제 처리
	@RequestMapping(value = "/noticeDel", method = RequestMethod.GET)
	public String noticeDel(@RequestParam("n_no") int n_no) throws Exception {
		service.noticeDel(n_no);
		return "redirect:/noticeList";
	}
}
