package com.oa.action;

import java.io.UnsupportedEncodingException;
import java.text.DateFormat;
import java.util.Date;
import java.util.List;

import com.oa.model.Plan;
import com.oa.model.Team;
import com.oa.service.PlanService;
import com.oa.service.TeamService;
import com.opensymphony.xwork2.ActionSupport;

public class PlanAction extends ActionSupport{
	private Plan plan;
	private PlanService planservice;
	private int id;
	private List<Plan> list;
	private String name;
	
	public Plan getPlan() {
		return plan;
	}

	public void setPlan(Plan plan) {
		this.plan = plan;
	}

	public PlanService getPlanservice() {
		return planservice;
	}

	public void setPlanservice(PlanService planservice) {
		this.planservice = planservice;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public List<Plan> getList() {
		return list;
	}

	public void setList(List<Plan> list) {
		this.list = list;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	/*
	 * 下面是处理请求的方法
	 */
	public String addPlan(){
		planservice.addPlan(plan);
		return SUCCESS;
	}
	
	public String queryPlan(){
		
		if(planservice.queryPlan()!=null){
			list=planservice.queryPlan();
			return SUCCESS;
		}
		else{
		return ERROR;
		}
	}
	public String updatePlan(){
		if(planservice.getPlan(plan.getId())!=null){
			planservice.updatePlan(plan);
			return SUCCESS;
		}
		else{
		return INPUT;
		}
	}
	public String delPlan(){
		if(planservice.getPlan(getId())!=null){
			planservice.delPlan(planservice.getPlan(getId()));
			return SUCCESS;
		}
		else{
		return INPUT;
		}
	}
	
	public String changePlan(){
		if(planservice.getPlan(getId())!=null){
			plan=planservice.getPlan(getId());
			return SUCCESS;
		}
		else{
		return INPUT;
		}
		
	}
	public String separatePlan(){
		Plan p=planservice.getPlan(getId());
		p.setChildren(p.getChildren()+"\n"+plan.getName());
		planservice.updatePlan(p);
		planservice.addPlan(plan);
		
		return SUCCESS;
	}
	
}
