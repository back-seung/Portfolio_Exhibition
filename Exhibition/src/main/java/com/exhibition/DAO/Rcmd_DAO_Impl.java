package com.exhibition.DAO;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.exhibition.VO.Rcmd_VO;

@Repository
public class Rcmd_DAO_Impl implements IF_Rcmd_DAO {
	@Inject
	private SqlSession session;
	private static String mapperQuery = "com.exhibition.DAO.IF_Rcmd_DAO";

	@Override
	public void insert(Rcmd_VO rcmdVO) throws Exception {
		session.insert(mapperQuery + ".insert", rcmdVO);
	}

}
