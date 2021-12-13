package com.exhibition.DAO;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.exhibition.VO.Reply_VO;

@Repository
public class Reply_DAO_Impl implements IF_Reply_DAO {
	@Inject
	private SqlSession session;
	private String mapperQuery = "com.exhibition.DAO.IF_Reply_DAO";

	@Override
	public void ReplyInsert(Reply_VO reVO) throws Exception {
		session.insert(mapperQuery + ".insert", reVO);
	}

	@Override
	public List<Reply_VO> selectAll(int rcNo) throws Exception {
		return session.selectList(mapperQuery + ".selectAll", rcNo);
	}

}
