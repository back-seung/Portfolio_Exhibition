package com.exhibition.bbs;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class RcmdController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	@RequestMapping(value = "/rcmdInsertForm", method = RequestMethod.GET)
	public String rcmdInsertForm() throws Exception {
		return "BBS/InsertForm";
	}
	
	@RequestMapping(value = "/viewList", method = RequestMethod.GET)
	public String viewList() throws Exception {
		return "BBS/selectAll";
	}
}
