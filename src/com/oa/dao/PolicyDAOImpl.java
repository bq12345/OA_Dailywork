package com.oa.dao;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.oa.model.Policy;

public class PolicyDAOImpl extends  HibernateDaoSupport implements PolicyDAO {

	@Override
	public List getAll() {
		String sql="from Policy";
		return this.getHibernateTemplate().find(sql);
	}

	@Override
	public List queryPolicy(int id) {
		String sql="from Policy where id="+id;
		return this.getHibernateTemplate().find(sql);
	}

	@Override
	public List queryPolicy(String fieldname, String value) {
		System.out.println("value: "+value);
		String sql="FROM Policy where "+fieldname+" like '%"+value+"%'";
		return this.getHibernateTemplate().find(sql);
	}

	@Override
	public Policy getPolicy(int id) {
		return (Policy)this.getHibernateTemplate().get(Policy.class,id);
	}

	@Override
	public void addPolicy(Policy policy) {
		this.getHibernateTemplate().save(policy);		
	}

	@Override
	public void updatePolicy(Policy policy) {
		this.getHibernateTemplate().update(policy);		
	}

	@Override
	public void deletePolicy(Policy policy) {
		this.getHibernateTemplate().delete(policy);
	}
	
}
