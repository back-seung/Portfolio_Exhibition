package com.exhibition.DAO;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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

	@Override
	public int rcmdCnt() throws Exception {
		return session.selectOne(mapperQuery + ".rcmdCnt");
	}

	@Override
	public List<Rcmd_VO> selectAll(Rcmd_VO rcmdVO) throws Exception {
		return session.selectList(mapperQuery + ".selectAll", rcmdVO);
	}

	@Override
	public void updateCnt(int rcNo) throws Exception {
		session.update(mapperQuery + ".updateCnt", rcNo);
	}

	@Override
	public Rcmd_VO selectOne(int rcNo) throws Exception {
		return session.selectOne(mapperQuery + ".selectOne", rcNo);
	}

}
