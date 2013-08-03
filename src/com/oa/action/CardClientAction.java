package com.oa.action;

import java.io.UnsupportedEncodingException;
import java.util.List;

import com.oa.model.CardClient;
import com.oa.model.CardTeam;
import com.oa.service.CardClientService;
import com.oa.service.CardTeamService;
import com.oa.service.TeamService;
import com.opensymphony.xwork2.ActionSupport;

public class CardClientAction extends ActionSupport{
	private CardClient cardclient;
	private CardClientService cardclientservice;
	private CardTeamService cardteamservice;
	private int id;
	private List<CardClient> list;
	private List<CardTeam> cardTeamList;
	private String name;
	private String teamname;
	private String workname;

	public CardClient getCardclient() {
		return cardclient;
	}

	public void setCardclient(CardClient cardclient) {
		this.cardclient = cardclient;
	}

	public CardClientService getCardclientservice() {
		return cardclientservice;
	}

	public void setCardclientservice(CardClientService cardclientservice) {
		this.cardclientservice = cardclientservice;
	}

	public CardTeamService getCardteamservice() {
		return cardteamservice;
	}

	public void setCardteamservice(CardTeamService cardteamservice) {
		this.cardteamservice = cardteamservice;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public List<CardClient> getList() {
		return list;
	}

	public void setList(List<CardClient> list) {
		this.list = list;
	}

	public List<CardTeam> getCardTeamList() {
		return cardTeamList;
	}

	public void setCardTeamList(List<CardTeam> cardTeamList) {
		this.cardTeamList = cardTeamList;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getTeamname() {
		return teamname;
	}

	public void setTeamname(String teamname) {
		this.teamname = teamname;
	}
	

	public String getWorkname() {
		return workname;
	}

	public void setWorkname(String workname) {
		this.workname = workname;
	}

	/*
	 * 下面是处理请求的方法
	 */
	public String addCardClient(){
		cardclientservice.addCardClient(cardclient);
		return SUCCESS;
	}
	
	public String queryCardClient(){
		
		if(cardclientservice.queryCardClient()!=null){
			list=cardclientservice.queryCardClient();
			return SUCCESS;
		}
		else{
		return ERROR;
		}
	}
	public String updateCardClient(){
		if(cardclientservice.getCardClient(cardclient.getId())!=null){
			cardclientservice.updateCardClient(cardclient);
			return SUCCESS;
		}
		else{
		return INPUT;
		}
	}
	public String delCardClient(){
		if(cardclientservice.getCardClient(getId())!=null){
			cardclientservice.delCardClient(cardclientservice.getCardClient(getId()));
			return SUCCESS;
		}
		else{
		return INPUT;
		}
	}
	
	public String changeCardClient(){
		if(cardclientservice.getCardClient(getId())!=null){
			cardclient=cardclientservice.getCardClient(getId());
			cardTeamList=cardteamservice.queryCardTeam();
			return SUCCESS;
		}
		else{
		return INPUT;
		}
		
	}
	public String queryById(){
		if(cardclientservice.queryCardClientByTeamId(getId())!=null){
			list=cardclientservice.queryCardClientByTeamId(getId());
			return SUCCESS;
		}
		else{
		return INPUT;
		}
	}
	public String queryByName(){
		try {
			name=new String(name.getBytes("ISO-8859-1"), "GB2312");
			teamname=new String(teamname.getBytes("ISO-8859-1"), "GB2312");
			workname=new String(workname.getBytes("ISO-8859-1"), "GB2312");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		
		list=cardclientservice.queryCardClient(name,teamname,workname);
			return SUCCESS;
	}
	
}
