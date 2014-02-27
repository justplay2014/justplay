package com.justplay.dao.hibernate;

import java.util.Collection;
import java.util.List;

import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import org.springframework.transaction.annotation.Transactional;

import com.justplay.beans.User;
import com.justplay.dao.UserDao;

@Transactional
public class UserDaoHibernate extends HibernateDaoSupport implements UserDao {

	public void save(User user) throws Exception {
		System.out.println(getHibernateTemplate() == null);
		getHibernateTemplate().save(user);
	}

	public void update(User user) throws Exception {
		getHibernateTemplate().merge(user);//当对象成为游离态时才会更新
	}

	public void delete(Long id) throws Exception {
		getHibernateTemplate().delete(get(id));
	}

	public void deleteAll(Collection<?> users) throws Exception {
		getHibernateTemplate().deleteAll(users);
	}

	public User get(Long id) throws Exception {
		return getHibernateTemplate().get(User.class,id);
	}
	
	@SuppressWarnings("unchecked")
	public List<User> find(String queryString) throws Exception {
		return getHibernateTemplate().find(queryString);
	}
	@SuppressWarnings("unchecked")
	public List<User> findAll() throws Exception {
		return (List<User>) getHibernateTemplate().find("from User");
	}
	
	@SuppressWarnings("unchecked")
	public User findByColumnName(String columnName,Object columnValue) throws Exception {
//		StringBuffer hql = new StringBuffer().append("from User u where u.")
//				.append(columnName).append("=:").append(columnValue);
		String hql = "from User u where u." + columnName + "='" + columnValue + "'";
		List<User> users = getHibernateTemplate().find(hql);
		
		if (users.size() == 0) {
			return null;
		} else {
			return (User) getHibernateTemplate().find(hql).get(0);
		}
	}
	public User execute(HibernateCallback<?> action) throws Exception {
		//TODO
		return null;
	}
	
	public List<User> executeFind(HibernateCallback<?> action) throws Exception {
		//TODO
		return null;
	}
}
