package com.justplay.dao;

import java.util.Collection;
import java.util.List;

import org.springframework.orm.hibernate3.HibernateCallback;

import com.justplay.beans.User;

public interface UserDao {
	
	public void save(User user) throws Exception;
	public void update(User user) throws Exception;
	public void delete(Long id) throws Exception;
	public void deleteAll(Collection<?> users) throws Exception;
	public User get(Long id) throws Exception;
	public List<User> find(String queryString) throws Exception;
	public List<User> findAll() throws Exception;
	public User findByColumnName(String columnName,Object columnValue) throws Exception;
	public User execute(HibernateCallback<?> action) throws Exception; 
	public List<User> executeFind(HibernateCallback<?> action) throws Exception; 
}
