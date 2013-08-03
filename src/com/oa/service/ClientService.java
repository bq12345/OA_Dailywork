package com.oa.service;

import java.util.List;

import com.oa.dao.ClientDAO;
import com.oa.model.Client;

public class ClientService {
	private ClientDAO clientDAO;

	public ClientDAO getClientDAO() {
		return clientDAO;
	}

	public void setClientDAO(ClientDAO clientDAO) {
		this.clientDAO = clientDAO;
	}
	
	public Client getClient(int clientId) {
		return clientDAO.getClient(clientId);
	}

	public void updateClient(Client client) {
		clientDAO.updateClient(client);
	}
	
	public List queryClient(String fieldname, String value) {
		return clientDAO.queryClient(fieldname, value);
	}
	
	public List queryClient() {
		return clientDAO.getAll();
	}
	
	public List queryClientByTeamId(int id) {
		return clientDAO.queryClient(id);
	}
	
	public void addClient(Client client) {
		clientDAO.addClient(client);
	}
	
	public void delClient(Client client) {
		clientDAO.deleteClient(client);
	}
}
