package com.justplay.service.impl;

import com.justplay.beans.User;
import com.justplay.dao.UserDao;
import com.justplay.service.UserService;

public class UserServiceImpl implements UserService {

	private static UserDao userDao;
	
	public void add(User user) throws Exception {
		userDao.add(user);
	}

	public static UserDao getUserDao() {
		return userDao;
	}

	public static void setUserDao(UserDao userDao) {
		UserServiceImpl.userDao = userDao;
	}
	
}
