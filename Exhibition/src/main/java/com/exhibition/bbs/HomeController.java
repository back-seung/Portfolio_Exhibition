package com.exhibition.bbs;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.exhibition.Service.IF_Notice_Service;
import com.exhibition.VO.Notice_VO;

@Controller
public class HomeController {
	@Inject
	IF_Notice_Service noticeService;
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model, Notice_VO nVO) throws Exception {
		logger.info("Welcome home! The client locale is {}.", locale);
		model.addAttribute("ntcList", noticeService.selectAll(nVO));

		return "home";
	}

}
