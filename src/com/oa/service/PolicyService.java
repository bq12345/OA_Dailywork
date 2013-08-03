package com.oa.service;

import java.util.List;

import com.oa.dao.PolicyDAO;
import com.oa.model.Policy;

public class PolicyService {
	private PolicyDAO policyDAO;	

	public PolicyDAO getPolicyDAO() {
		return policyDAO;
	}

	public void setPolicyDAO(PolicyDAO policyDAO) {
		this.policyDAO = policyDAO;
	}

	public Policy getPolicy(int id) {
		return policyDAO.getPolicy(id);
	}

	public void updatePolicy(Policy policy) {
		policyDAO.updatePolicy(policy);
	}

	public List queryPolicy() {
		return policyDAO.getAll();
	}
	public List queryPolicy(int id) {
		return policyDAO.queryPolicy(id);
	}
	public void addPolicy(Policy policy) {
		policyDAO.addPolicy(policy);
	}
	
	public void delPolicy(Policy policy) {
		policyDAO.deletePolicy(policy);
	}
}
