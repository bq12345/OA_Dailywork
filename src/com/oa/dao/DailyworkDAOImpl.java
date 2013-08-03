package com.oa.dao;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.oa.model.CardClient;
import com.oa.model.Dailywork;

public class DailyworkDAOImpl extends  HibernateDaoSupport implements DailyworkDAO{

	@Override
	public List getAll() {
		String sql="from Dailywork";
		return this.getHibernateTemplate().find(sql);
	}

	@Override
	public Dailywork getDailywork(int id) {
		return (Dailywork)this.getHibernateTemplate().get(Dailywork.class,id);
	}

	@Override
	public void addDailywork(Dailywork dailywork) {
		this.getHibernateTemplate().save(dailywork);
		
	}

	@Override
	public void updateDailywork(Dailywork dailywork) {
		this.getHibernateTemplate().update(dailywork);
		
	}

	@Override
	public void deleteDailywork(Dailywork dailywork) {
		this.getHibernateTemplate().delete(dailywork);
		
	}

	@Override
	public List queryDailywork(int id) {
		String sql="from Dailywork where standard="+id;
		return this.getHibernateTemplate().find(sql);
	}


}
