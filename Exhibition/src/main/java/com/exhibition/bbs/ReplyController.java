package com.exhibition.bbs;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.exhibition.Service.IF_Reply_Service;
import com.exhibition.VO.Reply_VO;

@Controller
public class ReplyController {
	@Inject
	IF_Reply_Service service;

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	@RequestMapping(value = "/ReplyInsert", method = RequestMethod.POST)
	public String ReplyInsert(Reply_VO reVO, @RequestParam("rc_no") int rcNo) throws Exception {
		service.ReplyInsert(reVO);
		return "redirect:/viewDetail?rc_no=" + rcNo;
	}

//	@RequestMapping(value = "/ReplyDEl", method = RequestMethod.GET)
//	public String ReplyDel(@RequestParam("rc_no") int rcNo) throws Exception {
//		return ""redirect:/viewDetail
//	}

}
