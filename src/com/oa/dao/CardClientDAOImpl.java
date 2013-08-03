package com.oa.dao;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.oa.model.CardClient;
import com.oa.model.Client;

public class CardClientDAOImpl extends HibernateDaoSupport implements CardClientDAO {

	@Override
	public List getAll() {
		String sql="from CardClient";
		return this.getHibernateTemplate().find(sql);
	}

	@Override
	public List queryCardClient(int id) {
		String sql="from CardClient where team_id="+id;
		return this.getHibernateTemplate().find(sql);
	}

	@Override
	public List queryCardClient(String clientvalue,String teamvalue,String workvalue) {
		String sql="FROM CardClient c where c.client_name like '%"+clientvalue+"%'"+ "and c.team like '%"+teamvalue+"%'"+ "and c.work like '%"+workvalue+"%'";
		return this.getHibernateTemplate().find(sql);
	}

	@Override
	public CardClient getCardClient(int id) {
		return (CardClient)this.getHibernateTemplate().get(CardClient.class,id);
	}

	@Override
	public void addCardClient(CardClient cardclient) {
		this.getHibernateTemplate().save(cardclient);
		
	}

	@Override
	public void updateCardClient(CardClient cardclient) {
		this.getHibernateTemplate().update(cardclient);			
	}

	@Override
	public void deleteCardClient(CardClient cardclient) {
		this.getHibernateTemplate().delete(cardclient);
		
	}

}
