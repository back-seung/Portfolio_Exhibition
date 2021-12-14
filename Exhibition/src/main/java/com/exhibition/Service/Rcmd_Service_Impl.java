package com.exhibition.Service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.exhibition.DAO.IF_Rcmd_DAO;
import com.exhibition.VO.Paging_VO;
import com.exhibition.VO.Rcmd_VO;

@Service
public class Rcmd_Service_Impl implements IF_Rcmd_Service {
	@Inject
	IF_Rcmd_DAO rcmdDAO;

	@Override
	public void insert(Rcmd_VO rcmdVO) throws Exception {
		rcmdDAO.insert(rcmdVO);
	}

	@Override
	public int rcmdCnt() throws Exception {
		return rcmdDAO.rcmdCnt();
	}

	@Override
	public List<Rcmd_VO> selectAll(Paging_VO pagingVO) throws Exception {
		return rcmdDAO.selectAll(pagingVO);
	}

	@Override
	public Rcmd_VO selectOne(int rcNo) throws Exception {
		rcmdDAO.updateCnt(rcNo);
		return rcmdDAO.selectOne(rcNo);
	}

	@Override
	public void updateRcmd(Rcmd_VO rcmdVO) throws Exception {
		rcmdDAO.updateRcmd(rcmdVO);
	}

	@Override
	public void deleteRcmd(int rcNo) throws Exception {
		rcmdDAO.deleteRcmd(rcNo);
	}

	@Override
	public List<Rcmd_VO> selectTop3(Rcmd_VO rcmdVO) throws Exception {
		return rcmdDAO.selectTop3(rcmdVO);
	}

	@Override
	public List<Rcmd_VO> getSearchList(Rcmd_VO searchVO) throws Exception {
		return rcmdDAO.getSearchList(searchVO);
	}

}
