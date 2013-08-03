package com.oa.service;

import java.util.List;

import com.oa.dao.CardTeamDAO;
import com.oa.model.CardTeam;

public class CardTeamService {
	private CardTeamDAO teamDAO;
	
	public CardTeamDAO getTeamDAO() {
		return teamDAO;
	}

	public void setTeamDAO(CardTeamDAO teamDAO) {
		this.teamDAO = teamDAO;
	}

	public CardTeam getCardTeam(int clientId) {
		return teamDAO.getCardTeam(clientId);
	}

	public void updateCardTeam(CardTeam client) {
		teamDAO.updateCardTeam(client);
	}
	
	public List queryCardTeam(String fieldname, String value) {
		return teamDAO.queryCardTeam(fieldname, value);
	}
	
	public List queryCardTeam() {
		return teamDAO.getAll();
	}
	
	public List queryCardTeamByTeamId(int id) {
		return teamDAO.queryCardTeam(id);
	}
	
	public void addCardTeam(CardTeam client) {
		teamDAO.addCardTeam(client);
	}
	
	public void delCardTeam(CardTeam client) {
		teamDAO.deleteCardTeam(client);
	}
}
