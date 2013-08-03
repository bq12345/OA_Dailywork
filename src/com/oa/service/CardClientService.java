package com.oa.service;

import java.util.List;

import com.oa.dao.CardClientDAO;
import com.oa.model.CardClient;

public class CardClientService {
	private CardClientDAO clientDAO;
	
	public CardClientDAO getClientDAO() {
		return clientDAO;
	}

	public void setClientDAO(CardClientDAO clientDAO) {
		this.clientDAO = clientDAO;
	}

	public CardClient getCardClient(int clientId) {
		return clientDAO.getCardClient(clientId);
	}

	public void updateCardClient(CardClient client) {
		clientDAO.updateCardClient(client);
	}
	public List queryCardClient(String client_name_value,String team_value,String work_value) {
		return clientDAO.queryCardClient(client_name_value,team_value,work_value);
	}
	
	public List queryCardClient() {
		return clientDAO.getAll();
	}
	
	public List queryCardClientByTeamId(int id) {
		return clientDAO.queryCardClient(id);
	}
	
	public void addCardClient(CardClient client) {
		clientDAO.addCardClient(client);
	}
	
	public void delCardClient(CardClient client) {
		clientDAO.deleteCardClient(client);
	}
}
