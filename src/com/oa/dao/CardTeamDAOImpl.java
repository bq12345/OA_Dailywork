package com.oa.dao;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.oa.model.CardTeam;

public class CardTeamDAOImpl extends HibernateDaoSupport implements CardTeamDAO {

	@Override
	public List getAll() {
		String sql="from CardTeam";
		return this.getHibernateTemplate().find(sql);
	}

	@Override
	public List queryCardTeam(int id) {
		String sql="from CardTeam where id="+id;
		return this.getHibernateTemplate().find(sql);
	}

	@Override
	public List queryCardTeam(String fieldname, String value) {
		String sql="FROM CardTeam where "+fieldname+" like '%"+value+"%'";
		return this.getHibernateTemplate().find(sql);
	}

	@Override
	public CardTeam getCardTeam(int id) {
		return (CardTeam)this.getHibernateTemplate().get(CardTeam.class,id);
	}

	@Override
	public void addCardTeam(CardTeam cardteam) {
		this.getHibernateTemplate().save(cardteam);
		
	}

	@Override
	public void updateCardTeam(CardTeam cardteam) {
		this.getHibernateTemplate().update(cardteam);			
	}

	@Override
	public void deleteCardTeam(CardTeam cardteam) {
		this.getHibernateTemplate().delete(cardteam);
		
	}

}
