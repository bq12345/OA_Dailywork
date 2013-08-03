package com.oa.action;

import java.util.List;

import com.oa.model.Team;
import com.oa.service.TeamService;
import com.opensymphony.xwork2.ActionSupport;

public class TeamAction extends ActionSupport{
	private Team team;
	private TeamService teamservice;
	private int id;
	private List<Team> list;
	
	public Team getTeam() {
		return team;
	}

	public void setTeam(Team team) {
		this.team = team;
	}

	public TeamService getTeamservice() {
		return teamservice;
	}

	public void setTeamservice(TeamService teamservice) {
		this.teamservice = teamservice;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public List<Team> getList() {
		return list;
	}

	public void setList(List<Team> list) {
		this.list = list;
	}

	/*
	 * 下面是处理请求的方法
	 */
	public String addTeam(){
		teamservice.addTeam(team);
		return SUCCESS;
	}
	
	public String queryTeam(){
		
		if(teamservice.queryTeam()!=null){
			list=teamservice.queryTeam();
			return SUCCESS;
		}
		else{
		return ERROR;
		}
	}
	public String updateTeam(){
		if(teamservice.getTeam(team.getId())!=null){
			teamservice.updateTeam(team);
			return SUCCESS;
		}
		else{
		return INPUT;
		}
	}
	public String delTeam(){
		if(teamservice.getTeam(getId())!=null){
			teamservice.delTeam(teamservice.getTeam(getId()));
			return SUCCESS;
		}
		else{
		return INPUT;
		}
	}
	
	public String changeTeam(){
		if(teamservice.getTeam(getId())!=null){
			team=teamservice.getTeam(getId());
			return SUCCESS;
		}
		else{
		return INPUT;
		}
	}
	
}
