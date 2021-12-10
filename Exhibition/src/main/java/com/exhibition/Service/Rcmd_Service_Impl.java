package com.exhibition.Service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.exhibition.DAO.IF_Rcmd_DAO;
import com.exhibition.VO.Rcmd_VO;

@Service
public class Rcmd_Service_Impl implements IF_Rcmd_Service {
	@Inject
	IF_Rcmd_DAO rcmdDAO;

	@Override
	public void insert(Rcmd_VO rcmdVO) throws Exception {
		rcmdDAO.insert(rcmdVO);
	}

}
