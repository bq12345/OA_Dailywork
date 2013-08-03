package com.oa.dao;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.oa.model.Notice;

public class NoticeDAOImpl extends  HibernateDaoSupport implements NoticeDAO {

	@Override
	public List getAll() {
		String sql="from Notice";
		return this.getHibernateTemplate().find(sql);
	}

	@Override
	public List queryNotice(int id) {
		String sql="from Notice where id="+id;
		return this.getHibernateTemplate().find(sql);
	}

	@Override
	public List queryNotice(String fieldname, String value) {
		System.out.println("value: "+value);
		String sql="FROM Notice where "+fieldname+" like '%"+value+"%'";
		return this.getHibernateTemplate().find(sql);
	}

	@Override
	public Notice getNotice(int id) {
		return (Notice)this.getHibernateTemplate().get(Notice.class,id);
	}

	@Override
	public void addNotice(Notice notice) {
		this.getHibernateTemplate().save(notice);		
	}

	@Override
	public void updateNotice(Notice notice) {
		this.getHibernateTemplate().update(notice);		
	}

	@Override
	public void deleteNotice(Notice notice) {
		this.getHibernateTemplate().delete(notice);
	}
	
}
