package com.oa.service;

import java.util.List;

import com.oa.dao.PlanDAO;
import com.oa.model.Plan;

public class PlanService {
	private PlanDAO planDAO;	

	public PlanDAO getPlanDAO() {
		return planDAO;
	}

	public void setPlanDAO(PlanDAO planDAO) {
		this.planDAO = planDAO;
	}

	public Plan getPlan(int id) {
		return planDAO.getPlan(id);
	}

	public void updatePlan(Plan plan) {
		planDAO.updatePlan(plan);
	}

	public List queryPlan() {
		return planDAO.getAll();
	}
	public List queryPlan(int id) {
		return planDAO.queryPlan(id);
	}
	public void addPlan(Plan plan) {
		planDAO.addPlan(plan);
	}
	
	public void delPlan(Plan plan) {
		planDAO.deletePlan(plan);
	}
}
