package com.exhibition.bbs;

import java.util.Locale;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.exhibition.Service.IF_Notice_Service;
import com.exhibition.Service.IF_Rcmd_Service;
import com.exhibition.VO.Notice_VO;
import com.exhibition.VO.Rcmd_VO;

@Controller
public class HomeController {
	@Inject
	IF_Notice_Service noticeService;

	@Inject
	IF_Rcmd_Service rcmdService;

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model, Notice_VO nVO, Rcmd_VO rcmdVO) throws Exception {
		logger.info("Welcome home! The client locale is {}.", locale);
		model.addAttribute("ntcList", noticeService.selectAll(nVO));
		model.addAttribute("rcmd", rcmdService.selectTop3(rcmdVO));
		return "home";
	}

}
