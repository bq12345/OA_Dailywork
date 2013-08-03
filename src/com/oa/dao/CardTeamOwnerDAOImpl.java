package com.oa.dao;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.oa.model.CardTeamOwner;

public class CardTeamOwnerDAOImpl extends HibernateDaoSupport implements CardTeamOwnerDAO {

	@Override
	public List getAll() {
		String sql="from CardTeamOwner";
		return this.getHibernateTemplate().find(sql);
	}

	@Override
	public List queryCardTeamOwner(int id) {
		String sql="from CardTeamOwner where id="+id;
		return this.getHibernateTemplate().find(sql);
	}

	@Override
	public List queryCardTeamOwner(String fieldname, String value) {
		String sql="FROM CardTeamOwner where "+fieldname+" like '%"+value+"%'";
		return this.getHibernateTemplate().find(sql);
	}

	@Override
	public CardTeamOwner getCardTeamOwner(int id) {
		return (CardTeamOwner)this.getHibernateTemplate().get(CardTeamOwner.class,id);
	}

	@Override
	public void addCardTeamOwner(CardTeamOwner cardteamowner) {
		this.getHibernateTemplate().save(cardteamowner);
		
	}

	@Override
	public void updateCardTeamOwner(CardTeamOwner cardteamowner) {
		this.getHibernateTemplate().update(cardteamowner);			
	}

	@Override
	public void deleteCardTeamOwner(CardTeamOwner cardteamowner) {
		this.getHibernateTemplate().delete(cardteamowner);
		
	}

}
