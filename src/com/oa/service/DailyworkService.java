package com.oa.service;

import java.util.List;

import com.oa.dao.DailyworkDAO;
import com.oa.model.Dailywork;

public class DailyworkService {
	private DailyworkDAO dailyworkDAO;
	
	public DailyworkDAO getDailyworkDAO() {
		return dailyworkDAO;
	}

	public void setDailyworkDAO(DailyworkDAO dailyworkDAO) {
		this.dailyworkDAO = dailyworkDAO;
	}

	public Dailywork getDailywork(int dailyworkId) {
		return dailyworkDAO.getDailywork(dailyworkId);
	}

	public void updateDailywork(Dailywork dailywork) {
		dailyworkDAO.updateDailywork(dailywork);
	}

	public List queryDailywork() {
		return dailyworkDAO.getAll();
	}
	public List queryDailywork(int id) {
		return dailyworkDAO.queryDailywork(id);
	}
	public void addDailywork(Dailywork dailywork) {
		dailyworkDAO.addDailywork(dailywork);
	}
	
	public void delDailywork(Dailywork dailywork) {
		dailyworkDAO.deleteDailywork(dailywork);
	}
}
