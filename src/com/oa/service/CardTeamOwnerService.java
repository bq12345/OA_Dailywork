package com.oa.service;

import java.util.List;

import com.oa.dao.CardTeamOwnerDAO;
import com.oa.model.CardClientOwner;
import com.oa.model.CardTeamOwner;

public class CardTeamOwnerService {
	private CardTeamOwnerDAO cardteamownerDAO;

	public CardTeamOwnerDAO getCardteamownerDAO() {
		return cardteamownerDAO;
	}

	public void setCardteamownerDAO(CardTeamOwnerDAO cardteamownerDAO) {
		this.cardteamownerDAO = cardteamownerDAO;
	}

	public void updateCardTeamOwner(CardTeamOwner team) {
		cardteamownerDAO.updateCardTeamOwner(team);
	}
	
	public CardTeamOwner getCardTeamOwner(int id) {
		return cardteamownerDAO.getCardTeamOwner(id);
	}
	
	public List queryCardTeamOwner(String fieldname, String value) {
		return cardteamownerDAO.queryCardTeamOwner(fieldname, value);
	}
	
	public List queryCardTeamOwner() {
		return cardteamownerDAO.getAll();
	}
	
	public List queryCardTeamOwnerByTeamId(int id) {
		return cardteamownerDAO.queryCardTeamOwner(id);
	}
	
	public void addCardTeamOwner(CardTeamOwner team) {
		cardteamownerDAO.addCardTeamOwner(team);
	}
	
	public void delCardTeamOwner(CardTeamOwner team) {
		cardteamownerDAO.deleteCardTeamOwner(team);
	}
}
