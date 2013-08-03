package com.oa.action;

import java.util.List;

import com.oa.model.CardTeam;
import com.oa.service.CardTeamService;
import com.opensymphony.xwork2.ActionSupport;

public class CardTeamAction extends ActionSupport{
	private CardTeam cardteam;
	private CardTeamService cardteamservice;
	private int id;
	private List<CardTeam> list;
	
	public CardTeam getCardteam() {
		return cardteam;
	}

	public void setCardteam(CardTeam cardteam) {
		this.cardteam = cardteam;
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

	public List<CardTeam> getList() {
		return list;
	}

	public void setList(List<CardTeam> list) {
		this.list = list;
	}

	/*
	 * 下面是处理请求的方法
	 */
	public String addCardTeam(){
		cardteamservice.addCardTeam(cardteam);
		return SUCCESS;
	}
	
	public String queryCardTeam(){
		
		if(cardteamservice.queryCardTeam()!=null){
			list=cardteamservice.queryCardTeam();
			return SUCCESS;
		}
		else{
		return ERROR;
		}
	}
	public String updateCardTeam(){
		if(cardteamservice.getCardTeam(cardteam.getId())!=null){
			cardteamservice.updateCardTeam(cardteam);
			return SUCCESS;
		}
		else{
		return INPUT;
		}
	}
	public String delCardTeam(){
		if(cardteamservice.getCardTeam(getId())!=null){
			cardteamservice.delCardTeam(cardteamservice.getCardTeam(getId()));
			return SUCCESS;
		}
		else{
		return INPUT;
		}
	}
	
	public String changeCardTeam(){
		if(cardteamservice.getCardTeam(getId())!=null){
			cardteam=cardteamservice.getCardTeam(getId());
			return SUCCESS;
		}
		else{
		return INPUT;
		}
		
	}
	public String queryById(){
		if(cardteamservice.queryCardTeamByTeamId(getId())!=null){
			list=cardteamservice.queryCardTeamByTeamId(getId());
			return SUCCESS;
		}
		else{
		return INPUT;
		}
	}
	
}
