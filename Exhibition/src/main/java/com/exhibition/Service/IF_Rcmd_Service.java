package com.exhibition.Service;

import java.util.List;

import com.exhibition.VO.Rcmd_VO;

public interface IF_Rcmd_Service {

	public void insert(Rcmd_VO rcmdVO) throws Exception;

	public int rcmdCnt() throws Exception;

	public List<Rcmd_VO> selectAll(Rcmd_VO rcmdVO) throws Exception;

	public Rcmd_VO selectOne(int rcNo) throws Exception;

}
