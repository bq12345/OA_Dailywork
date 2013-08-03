package com.oa.dao;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.oa.model.CardClientOwner;

public class CardClientOwnerDAOImpl extends HibernateDaoSupport implements CardClientOwnerDAO {

	@Override
	public List getAll() {
		String sql="from CardClientOwner";
		return this.getHibernateTemplate().find(sql);
	}

	@Override
	public List queryCardClientOwner(int id) {
		String sql="from CardClientOwner where team_id="+id;
		return this.getHibernateTemplate().find(sql);
	}

	@Override
	public List queryCardClientOwner(String clientvalue,String teamvalue,String workvalue) {
		String sql="FROM CardClientOwner c where c.client_name like '%"+clientvalue+"%'"+ "and c.team like '%"+teamvalue+"%'"+ "and c.work like '%"+workvalue+"%'";
		return this.getHibernateTemplate().find(sql);
	}

	@Override
	public CardClientOwner getCardClientOwner(int id) {
		return (CardClientOwner)this.getHibernateTemplate().get(CardClientOwner.class,id);
	}

	@Override
	public void addCardClientOwner(CardClientOwner cardclientowner) {
		this.getHibernateTemplate().save(cardclientowner);
		
	}

	@Override
	public void updateCardClientOwner(CardClientOwner cardclientowner) {
		this.getHibernateTemplate().update(cardclientowner);			
	}

	@Override
	public void deleteCardClientOwner(CardClientOwner cardclientowner) {
		this.getHibernateTemplate().delete(cardclientowner);
		
	}

}
