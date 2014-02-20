package com.justplay.dao.impl;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.justplay.beans.User;
import com.justplay.dao.UserDao;

public class UserDaoImpl extends HibernateDaoSupport implements UserDao {

	public void add(User user) throws Exception {
		System.out.println("add user");
		//getHibernateTemplate().save(user);
	}
}
