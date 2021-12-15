package com.exhibition.DAO;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.exhibition.VO.User_VO;

@Repository
public class User_DAO_Impl implements IF_User_DAO {
	@Inject
	private SqlSession session;
	private static String mapperquery = "com.exhibition.DAO.IF_User_DAO";

	@Override
	public void userInsert(User_VO userVO) throws Exception {
		session.insert(mapperquery + ".insert", userVO);
	}

	@Override
	public User_VO selectOne(String id) throws Exception {
		return session.selectOne(mapperquery + ".selectOne", id);
	}

	@Override
	public void userMod(User_VO userVO) throws Exception {
		System.out.println("ID : " + userVO.getId());
		System.out.println("NAME : " + userVO.getName());
		session.update(mapperquery + ".update", userVO);

	}

	@Override
	public void userDel(String id) throws Exception {
		session.delete(mapperquery + ".delete", id);
	}

	@Override
	public User_VO searchUser(User_VO searchUser) throws Exception {
		return session.selectOne(mapperquery + ".search", searchUser);
	}

}
