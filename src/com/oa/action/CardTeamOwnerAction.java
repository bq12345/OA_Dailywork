package com.oa.action;

import java.util.List;

import com.oa.model.CardTeamOwner;
import com.oa.service.CardTeamOwnerService;
import com.opensymphony.xwork2.ActionSupport;

public class CardTeamOwnerAction extends ActionSupport{
	private CardTeamOwner cardteamowner;
	private CardTeamOwnerService cardteamownerservice;
	private int id;
	private List<CardTeamOwner> list;
	
	
	public CardTeamOwner getCardteamowner() {
		return cardteamowner;
	}

	public void setCardteamowner(CardTeamOwner cardteamowner) {
		this.cardteamowner = cardteamowner;
	}

	public CardTeamOwnerService getCardteamownerservice() {
		return cardteamownerservice;
	}

	public void setCardteamownerservice(CardTeamOwnerService cardteamownerservice) {
		this.cardteamownerservice = cardteamownerservice;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public List<CardTeamOwner> getList() {
		return list;
	}

	public void setList(List<CardTeamOwner> list) {
		this.list = list;
	}

	/*
	 * 下面是处理请求的方法
	 */
	public String addCardTeamOwner(){
		cardteamownerservice.addCardTeamOwner(cardteamowner);
		return SUCCESS;
	}
	
	public String queryCardTeamOwner(){
		
		if(cardteamownerservice.queryCardTeamOwner()!=null){
			list=cardteamownerservice.queryCardTeamOwner();
			return SUCCESS;
		}
		else{
		return ERROR;
		}
	}
	public String updateCardTeamOwner(){
		if(cardteamownerservice.getCardTeamOwner(cardteamowner.getId())!=null){
			cardteamownerservice.updateCardTeamOwner(cardteamowner);
			return SUCCESS;
		}
		else{
		return INPUT;
		}
	}
	public String delCardTeamOwner(){
		if(cardteamownerservice.getCardTeamOwner(getId())!=null){
			cardteamownerservice.delCardTeamOwner(cardteamownerservice.getCardTeamOwner(getId()));
			return SUCCESS;
		}
		else{
		return INPUT;
		}
	}
	
	public String changeCardTeamOwner(){
		if(cardteamownerservice.getCardTeamOwner(getId())!=null){
			cardteamowner=cardteamownerservice.getCardTeamOwner(getId());
			return SUCCESS;
		}
		else{
		return INPUT;
		}
		
	}
	public String queryById(){
		if(cardteamownerservice.queryCardTeamOwnerByTeamId(getId())!=null){
			list=cardteamownerservice.queryCardTeamOwnerByTeamId(getId());
			return SUCCESS;
		}
		else{
		return INPUT;
		}
	}
	
}
