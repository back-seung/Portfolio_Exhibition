package com.exhibition.Service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.exhibition.DAO.IF_Reply_DAO;
import com.exhibition.VO.Reply_VO;

@Service
public class Reply_Service_Impl implements IF_Reply_Service {
	@Inject
	IF_Reply_DAO replyDAO;

	@Override
	public void ReplyInsert(Reply_VO reVO) throws Exception {
		replyDAO.ReplyInsert(reVO);
	}

	@Override
	public List<Reply_VO> selectAll(int rcNo) throws Exception {
		return replyDAO.selectAll(rcNo);
	}

}
