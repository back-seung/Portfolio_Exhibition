package com.exhibition.Service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.exhibition.DAO.IF_Notice_DAO;
import com.exhibition.VO.Notice_VO;

@Service
public class Notice_Service_Impl implements IF_Notice_Service {
	@Inject
	IF_Notice_DAO noticeDAO;

	@Override
	public void noticeInput(Notice_VO nVO) throws Exception {
		noticeDAO.noticeInput(nVO);
	}

	@Override
	public List<Notice_VO> selectAll(Notice_VO nVO) throws Exception {
		return noticeDAO.selectAll(nVO);
	}

	@Override
	public Notice_VO selectOne(int n_no) throws Exception {
		return noticeDAO.selectOne(n_no);
	}

	@Override
	public void noticeMod(Notice_VO nVO) throws Exception {
		noticeDAO.noticeMod(nVO);
	}

	@Override
	public void noticeDel(int n_no) throws Exception {
		noticeDAO.noticeDel(n_no);
	}

}
