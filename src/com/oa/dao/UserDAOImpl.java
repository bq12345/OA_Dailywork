package com.oa.dao;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.oa.model.User;

public class UserDAOImpl extends  HibernateDaoSupport implements UserDAO {

	@Override
	public List getAll() {
		String sql="from User";
		return this.getHibernateTemplate().find(sql);
	}

	@Override
	public List queryUser(String fieldname, String value) {
		System.out.println("value: "+value);
		String sql="FROM User where "+fieldname+" like '%"+value+"%'";
		return this.getHibernateTemplate().find(sql);
	}

	@Override
	public User getUser(int id) {
		return (User)this.getHibernateTemplate().get(User.class,id);
	}

	@Override
	public void addUser(User user) {
		this.getHibernateTemplate().save(user);		
	}

	@Override
	public void updateUser(User user) {
		this.getHibernateTemplate().update(user);		
	}

	@Override
	public void deleteUser(User user) {
		this.getHibernateTemplate().delete(user);
	}
	
}
