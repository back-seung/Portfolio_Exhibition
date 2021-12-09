package com.exhibition.Service;

import java.util.List;

import com.exhibition.VO.Notice_VO;

public interface IF_Notice_Service {

	public void noticeInput(Notice_VO nVO) throws Exception;

	public List<Notice_VO> selectAll(Notice_VO nVO) throws Exception;

	public Notice_VO selectOne(int n_no) throws Exception;

	public void noticeMod(Notice_VO nVO) throws Exception;

	public void noticeDel(int n_no) throws Exception;

}
