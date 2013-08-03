package com.oa.dao;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.oa.model.Client;
import com.oa.model.Team;

public class TeamDAOImpl extends  HibernateDaoSupport implements TeamDAO{

	@Override
	public List getAll() {
		String sql="from Team";
		return this.getHibernateTemplate().find(sql);
	}

	@Override
	public Team getTeam(int id) {
		return (Team)this.getHibernateTemplate().get(Team.class,id);
	}

	@Override
	public void addTeam(Team team) {
		this.getHibernateTemplate().save(team);		
	}

	@Override
	public void updateTeam(Team team) {
		this.getHibernateTemplate().update(team);
		
	}

	@Override
	public void deleteTeam(Team team) {
		this.getHibernateTemplate().delete(team);
	}

	
}
