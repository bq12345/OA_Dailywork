package com.oa.service;

import java.util.List;

import com.oa.dao.CardClientOwnerDAO;
import com.oa.model.CardClientOwner;

public class CardClientOwnerService {
	
	private CardClientOwnerDAO cardclientownerDAO;
	
	
	public CardClientOwnerDAO getCardclientownerDAO() {
		return cardclientownerDAO;
	}

	public void setCardclientownerDAO(CardClientOwnerDAO cardclientownerDAO) {
		this.cardclientownerDAO = cardclientownerDAO;
	}

	public CardClientOwner getCardClientOwner(int clientId) {
		return cardclientownerDAO.getCardClientOwner(clientId);
	}

	public void updateCardClientOwner(CardClientOwner client) {
		cardclientownerDAO.updateCardClientOwner(client);
	}
	
	public List queryCardClientOwner(String client_name_value,String team_value,String work_value) {
		return cardclientownerDAO.queryCardClientOwner(client_name_value,team_value,work_value);
	}
	
	public List queryCardClientOwner() {
		return cardclientownerDAO.getAll();
	}
	
	public List queryCardClientOwnerByTeamId(int id) {
		return cardclientownerDAO.queryCardClientOwner(id);
	}
	
	public void addCardClientOwner(CardClientOwner client) {
		cardclientownerDAO.addCardClientOwner(client);
	}
	
	public void delCardClientOwner(CardClientOwner client) {
		cardclientownerDAO.deleteCardClientOwner(client);
	}
}
