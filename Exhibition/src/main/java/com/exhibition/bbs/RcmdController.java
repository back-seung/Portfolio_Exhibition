package com.exhibition.bbs;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.exhibition.Service.IF_Rcmd_Service;
import com.exhibition.Service.IF_Reply_Service;
import com.exhibition.VO.Paging_VO;
import com.exhibition.VO.Rcmd_VO;
import com.exhibition.util.FileDataUtil;

@Controller
public class RcmdController {
	@Inject
	private IF_Rcmd_Service service;
	@Inject
	private IF_Reply_Service replyService;
	@Inject
	private FileDataUtil fileDataUtil;

	// Insert 폼 이동
	@RequestMapping(value = "/rcmdInsertForm", method = RequestMethod.GET)
	public String rcmdInsertForm() throws Exception {
		return "BBS/InsertForm";
	}

	// 삽입
	@RequestMapping(value = "/rcmdInsert", method = RequestMethod.POST)
	public String rcmdInsert(Rcmd_VO rcmdVO, MultipartFile file) throws Exception {
		if (file.getOriginalFilename() == "") {
			System.out.println("첨부파일 X");
		} else {
			System.out.println("첨부파일O");
			String r_FileName = fileDataUtil.fileUpload(file);
			rcmdVO.setFileName(r_FileName);
			rcmdVO.setThumbFileName("t_" + r_FileName);
		}
		service.insert(rcmdVO);

		return "redirect:/viewList";
	}

	// 리스트 가져오기
	@RequestMapping(value = "/viewList", method = RequestMethod.GET)
	public String viewList(@ModelAttribute Paging_VO pagingVO, Model model, Rcmd_VO rcmdVO) throws Exception {
		if (pagingVO.getPage() == null) {
			pagingVO.setPage(1);
		}
		pagingVO.setPerPageNum(10);
		pagingVO.setTotalCount(service.rcmdCnt());
		model.addAttribute("rcmdList", service.selectAll(rcmdVO));
		return "BBS/SelectAll";
	}

	// 상세 페이지 폼
	@RequestMapping(value = "/viewDetail", method = RequestMethod.GET)
	public String viewDetail(Model model, @RequestParam("rc_no") int rcNo) throws Exception {
		model.addAttribute("rcmd", service.selectOne(rcNo));
		return "BBS/SelectOne";
	}

	// 수정 폼
	@RequestMapping(value = "/rcmdModForm", method = RequestMethod.GET)
	public String rcmdModForm(Model model, @RequestParam("rc_no") int rcNo) throws Exception {
		model.addAttribute("rcmd", service.selectOne(rcNo));
		return "BBS/ModForm";
	}

	// 수정
	@RequestMapping(value = "/rcmdMod", method = RequestMethod.POST)
	public String rcmdMod(MultipartFile file, Rcmd_VO rcmdVO) throws Exception {
		if()
			String mod_FileName = fileDataUtil.fileUpload(file);
			rcmdVO.setFileName(mod_FileName);
			rcmdVO.setThumbFileName("t_" + mod_FileName);
		service.updateRcmd(rcmdVO);
		return "redirect:/viewDetail";
	}

	// 삭제
	@RequestMapping(value = "/rcmdDel", method = RequestMethod.GET)
	public String rcmdDel(@RequestParam("rc_no") int rcNo) throws Exception {
		service.deleteRcmd(rcNo);
		return "redirect:/viewList";
	}

}
