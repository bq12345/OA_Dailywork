package com.oa.action;

import java.util.List;

import com.oa.model.Dailywork;
import com.oa.service.DailyworkService;
import com.opensymphony.xwork2.ActionSupport;

public class DailyworkAction extends ActionSupport {
	private Dailywork dailywork;
	private DailyworkService dailyworkservice;
	private int id;
	private List<Dailywork> list;

	public Dailywork getDailywork() {
		return dailywork;
	}

	public void setDailywork(Dailywork dailywork) {
		this.dailywork = dailywork;
	}

	public DailyworkService getDailyworkservice() {
		return dailyworkservice;
	}

	public void setDailyworkservice(DailyworkService dailyworkservice) {
		this.dailyworkservice = dailyworkservice;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public List<Dailywork> getList() {
		return list;
	}

	public void setList(List<Dailywork> list) {
		this.list = list;
	}

	/*
	 * 下面是处理请求的方法
	 */
	public String addDailywork() {
		dailyworkservice.addDailywork(dailywork);
		return SUCCESS;
	}

	public String queryDailywork() {

		if (dailyworkservice.queryDailywork() != null) {
			list = dailyworkservice.queryDailywork();
			return SUCCESS;
		} else {
			return ERROR;
		}
	}

	public String updateDailywork() {
		if (dailyworkservice.getDailywork(dailywork.getId()) != null) {
			dailyworkservice.updateDailywork(dailywork);
			return SUCCESS;
		} else {
			return INPUT;
		}
	}

	public String delDailywork() {
		if (dailyworkservice.getDailywork(getId()) != null) {
			dailyworkservice.delDailywork(dailyworkservice
					.getDailywork(getId()));
			return SUCCESS;
		} else {
			return INPUT;
		}
	}

	public String changeDailywork() {
		if (dailyworkservice.getDailywork(getId()) != null) {
			dailywork = dailyworkservice.getDailywork(getId());
			return SUCCESS;
		} else {
			return INPUT;
		}

	}
	public String queryDailyworkStandard() {

		if (dailyworkservice.queryDailywork(1) != null) {
			list = dailyworkservice.queryDailywork(1);
			return SUCCESS;
		} else {
			return ERROR;
		}
	}
	

}
