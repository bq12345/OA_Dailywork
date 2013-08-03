package com.oa.action;

import java.io.UnsupportedEncodingException;
import java.util.List;

import com.oa.model.Client;
import com.oa.model.Team;
import com.oa.service.ClientService;
import com.oa.service.TeamService;
import com.opensymphony.xwork2.ActionSupport;

public class ClientAction extends ActionSupport{
	private Client client;
	private ClientService clientservice;
	private TeamService teamservice;
	private int id;
	private List<Client> list;
	private List<Team> teamList;
	private String name;
	public Client getClient() {
		return client;
	}
	public void setClient(Client client) {
		this.client = client;
	}
	public ClientService getService() {
		return clientservice;
	}
	public void setService(ClientService clientservice) {
		this.clientservice = clientservice;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	public List<Client> getList() {
		return list;
	}
	public void setList(List<Client> list) {
		this.list = list;
	}
	public ClientService getClientservice() {
		return clientservice;
	}
	public void setClientservice(ClientService clientservice) {
		this.clientservice = clientservice;
	}
	public List<Team> getTeamList() {
		return teamList;
	}
	public void setTeamList(List<Team> teamList) {
		this.teamList = teamList;
	}
	
	public TeamService getTeamservice() {
		return teamservice;
	}
	public void setTeamservice(TeamService teamservice) {
		this.teamservice = teamservice;
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
	public String addClient(){
		clientservice.addClient(client);
		return SUCCESS;
	}
	
	public String queryClient(){
		
		if(clientservice.queryClient()!=null){
			list=clientservice.queryClient();
			teamList=teamservice.queryTeam();
			return SUCCESS;
		}
		else{
		return ERROR;
		}
	}
	public String updateClient(){
		if(clientservice.getClient(client.getId())!=null){
			clientservice.updateClient(client);
			return SUCCESS;
		}
		else{
		return INPUT;
		}
	}
	public String delClient(){
		if(clientservice.getClient(getId())!=null){
			clientservice.delClient(clientservice.getClient(getId()));
			return SUCCESS;
		}
		else{
		return INPUT;
		}
	}
	
	public String changeClient(){
		if(clientservice.getClient(getId())!=null){
			client=clientservice.getClient(getId());
			teamList=teamservice.queryTeam();
			return SUCCESS;
		}
		else{
		return INPUT;
		}
		
	}
	public String queryById(){
		if(clientservice.queryClientByTeamId(getId())!=null){
			list=clientservice.queryClientByTeamId(getId());
			return SUCCESS;
		}
		else{
		return INPUT;
		}
	}
	public String queryByName(){
		try {
			name=new String(name.getBytes("ISO-8859-1"), "GB2312");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		if(clientservice.queryClient("client_name",name)!=null){
			list=clientservice.queryClient("client_name",name);
			return SUCCESS;
		}
		else{
		return ERROR;
		}
	}
	
}
