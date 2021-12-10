package com.exhibition.DAO;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.exhibition.VO.Notice_VO;

@Repository
public class Notice_DAO_Impl implements IF_Notice_DAO {
	@Inject
	private SqlSession session;
	private static String mapperQuery = "com.exhibition.DAO.IF_Notice_DAO";

	@Override
	public void noticeInput(Notice_VO nVO) throws Exception {
		session.insert(mapperQuery + ".insert", nVO);
	}

	@Override
	public List<Notice_VO> selectAll(Notice_VO nVO) throws Exception {
		return session.selectList(mapperQuery + ".selectAll", nVO);
	}

	@Override
	public Notice_VO selectOne(int n_no) throws Exception {
		return session.selectOne(mapperQuery + ".selectOne", n_no);
	}

	@Override
	public void noticeMod(Notice_VO nVO) throws Exception {
		session.update(mapperQuery + ".update", nVO);
	}

	@Override
	public void noticeDel(int n_no) throws Exception {
		session.delete(mapperQuery + ".delete", n_no);
	}

}
