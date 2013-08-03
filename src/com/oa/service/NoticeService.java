package com.oa.service;

import java.util.List;

import com.oa.dao.NoticeDAO;
import com.oa.model.Notice;

public class NoticeService {
	private NoticeDAO noticeDAO;	

	public NoticeDAO getNoticeDAO() {
		return noticeDAO;
	}

	public void setNoticeDAO(NoticeDAO noticeDAO) {
		this.noticeDAO = noticeDAO;
	}

	public Notice getNotice(int id) {
		return noticeDAO.getNotice(id);
	}

	public void updateNotice(Notice notice) {
		noticeDAO.updateNotice(notice);
	}

	public List queryNotice() {
		return noticeDAO.getAll();
	}
	public List queryNotice(int id) {
		return noticeDAO.queryNotice(id);
	}
	public void addNotice(Notice notice) {
		noticeDAO.addNotice(notice);
	}
	
	public void delNotice(Notice notice) {
		noticeDAO.deleteNotice(notice);
	}
}
