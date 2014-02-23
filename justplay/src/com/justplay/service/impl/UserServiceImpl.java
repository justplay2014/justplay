package com.justplay.service.impl;

import java.util.Collection;
import java.util.List;

import org.springframework.orm.hibernate3.HibernateCallback;

import com.justplay.beans.User;
import com.justplay.dao.UserDao;
import com.justplay.service.UserService;

public class UserServiceImpl implements UserService {

	private UserDao userDao;
	
	public void save(User user) throws Exception {
		userDao.save(user);
	}

	public void update(User user) throws Exception {
		userDao.update(user);
	}

	public void delete(Long id) throws Exception {
		userDao.delete(id);
	}

	public void deleteAll(Collection<?> users) throws Exception {
		userDao.deleteAll(users);
	}

	public User get(Long id) throws Exception {
		return userDao.get(id);
	}

	public List<User> find(String queryString) throws Exception {
		return userDao.find(queryString);
	}

	public List<User> findAll() throws Exception {
		return userDao.findAll();
	}

	public List<User> findByColumnName(String columnName) throws Exception {
		return userDao.findByColumnName(columnName);
	}

	public User execute(HibernateCallback<?> action) throws Exception {
		return null;
	}

	public List<User> executeFind(HibernateCallback<?> action) throws Exception {
		return null;
	}
	public UserDao getUserDao() {
		return userDao;
	}

	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}

}
