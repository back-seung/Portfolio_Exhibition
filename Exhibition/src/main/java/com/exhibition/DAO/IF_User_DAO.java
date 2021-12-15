package com.exhibition.DAO;

import com.exhibition.VO.User_VO;

public interface IF_User_DAO {

	public void userInsert(User_VO userVO) throws Exception;

	public User_VO selectOne(String id) throws Exception;

	public void userMod(User_VO userVO) throws Exception;

	public void userDel(String id) throws Exception;

	public User_VO searchUser(User_VO searchUser) throws Exception;

}
