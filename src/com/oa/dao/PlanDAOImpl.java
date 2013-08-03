package com.oa.dao;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.oa.model.Plan;

public class PlanDAOImpl extends  HibernateDaoSupport implements PlanDAO {

	@Override
	public List getAll() {
		String sql="from Plan";
		return this.getHibernateTemplate().find(sql);
	}

	@Override
	public List queryPlan(int id) {
		String sql="from Plan where team_id="+id;
		return this.getHibernateTemplate().find(sql);
	}

	@Override
	public List queryPlan(String fieldname, String value) {
		System.out.println("value: "+value);
		String sql="FROM Plan where "+fieldname+" like '%"+value+"%'";
		return this.getHibernateTemplate().find(sql);
	}

	@Override
	public Plan getPlan(int id) {
		return (Plan)this.getHibernateTemplate().get(Plan.class,id);
	}

	@Override
	public void addPlan(Plan plan) {
		this.getHibernateTemplate().save(plan);		
	}

	@Override
	public void updatePlan(Plan plan) {
		this.getHibernateTemplate().update(plan);		
	}

	@Override
	public void deletePlan(Plan plan) {
		this.getHibernateTemplate().delete(plan);
	}
	
}
