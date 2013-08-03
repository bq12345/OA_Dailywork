package com.oa.service;

import java.util.List;

import com.oa.dao.TeamDAO;
import com.oa.model.Team;

public class TeamService {
	private TeamDAO teamDAO;

	public TeamDAO getTeamDAO() {
		return teamDAO;
	}

	public void setTeamDAO(TeamDAO teamDAO) {
		this.teamDAO = teamDAO;
	}
	
	public Team getTeam(int teamId) {
		return teamDAO.getTeam(teamId);
	}

	public void updateTeam(Team team) {
		teamDAO.updateTeam(team);
	}
	
	public List queryTeam() {
		return teamDAO.getAll();
	}
	
	public void addTeam(Team team) {
		teamDAO.addTeam(team);
	}
	
	public void delTeam(Team team) {
		teamDAO.deleteTeam(team);
	}
}
