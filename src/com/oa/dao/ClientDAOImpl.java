package com.oa.dao;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.oa.model.Client;

public class ClientDAOImpl extends  HibernateDaoSupport implements ClientDAO {

	@Override
	public List getAll() {
		String sql="from Client";
		return this.getHibernateTemplate().find(sql);
	}

	@Override
	public List queryClient(int id) {
		String sql="from Client where team_id="+id;
		return this.getHibernateTemplate().find(sql);
	}

	@Override
	public List queryClient(String fieldname, String value) {
		System.out.println("value: "+value);
		String sql="FROM Client where "+fieldname+" like '%"+value+"%'";
		return this.getHibernateTemplate().find(sql);
	}

	@Override
	public Client getClient(int id) {
		return (Client)this.getHibernateTemplate().get(Client.class,id);
	}

	@Override
	public void addClient(Client client) {
		this.getHibernateTemplate().save(client);		
	}

	@Override
	public void updateClient(Client client) {
		this.getHibernateTemplate().update(client);		
	}

	@Override
	public void deleteClient(Client client) {
		this.getHibernateTemplate().delete(client);
	}
	
}
