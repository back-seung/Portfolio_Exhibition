package com.exhibition.DAO;

import java.util.List;

import com.exhibition.VO.Reply_VO;

public interface IF_Reply_DAO {

	public void ReplyInsert(Reply_VO reVO) throws Exception;

	public List<Reply_VO> selectAll(int rcNo) throws Exception;

}
