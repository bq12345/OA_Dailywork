package com.oa.dao;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.oa.model.Type;

public class TypeDAOImpl extends  HibernateDaoSupport implements TypeDAO{

	@Override
	public List getAll() {
		String sql="from Type";
		return this.getHibernateTemplate().find(sql);
	}

	@Override
	public Type getType(int id) {
		return (Type)this.getHibernateTemplate().get(Type.class,id);
	}

	@Override
	public void addType(Type type) {
		this.getHibernateTemplate().save(type);		
	}

	@Override
	public void updateType(Type type) {
		this.getHibernateTemplate().update(type);
		
	}

	@Override
	public void deleteType(Type type) {
		this.getHibernateTemplate().delete(type);
	}

	
}
