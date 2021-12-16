package com.exhibition.Service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.exhibition.DAO.IF_User_DAO;
import com.exhibition.VO.User_VO;

@Service
public class User_Service_Impl implements IF_User_Service {
	@Inject
	IF_User_DAO userDAO;

	@Override
	public void userInsert(User_VO userVO) throws Exception {
		userDAO.userInsert(userVO);
	}

	@Override
	public User_VO selectOne(String id) throws Exception {
		return userDAO.selectOne(id);
	}

	@Override
	public void userMod(User_VO userVO) throws Exception {
		userDAO.userMod(userVO);
	}

	@Override
	public void userDel(String id) throws Exception {
		userDAO.userDel(id);
	}

	@Override
	public User_VO searchUser(User_VO searchUser) throws Exception {
		return userDAO.searchUser(searchUser);
	}

	@Override
	public int idCheck(String id) throws Exception {
		int result = userDAO.idCheck(id);
		return result;
	}

}
