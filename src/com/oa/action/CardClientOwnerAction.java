package com.oa.action;

import java.io.UnsupportedEncodingException;
import java.util.List;

import com.oa.model.CardClientOwner;
import com.oa.model.CardTeamOwner;
import com.oa.service.CardClientOwnerService;
import com.oa.service.CardTeamOwnerService;
import com.opensymphony.xwork2.ActionSupport;

public class CardClientOwnerAction extends ActionSupport{
	private CardClientOwner cardclientowner;
	private CardClientOwnerService cardclientownerownerservice;
	private CardTeamOwnerService cardteamownerservice;
	private int id;
	private List<CardClientOwner> list;
	private List<CardTeamOwner> cardTeamList;
	private String name;
	private String teamname;
	private String workname;
	

	public CardClientOwner getCardclientowner() {
		return cardclientowner;
	}

	public void setCardclientowner(CardClientOwner cardclientowner) {
		this.cardclientowner = cardclientowner;
	}

	public CardClientOwnerService getCardclientownerownerservice() {
		return cardclientownerownerservice;
	}

	public void setCardclientownerownerservice(
			CardClientOwnerService cardclientownerownerservice) {
		this.cardclientownerownerservice = cardclientownerownerservice;
	}

	public CardClientOwnerService getCardclientownerservice() {
		return cardclientownerownerservice;
	}

	public void setCardclientownerservice(
			CardClientOwnerService cardclientownerownerservice) {
		this.cardclientownerownerservice = cardclientownerownerservice;
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

	public List<CardClientOwner> getList() {
		return list;
	}

	public void setList(List<CardClientOwner> list) {
		this.list = list;
	}

	public List<CardTeamOwner> getCardTeamList() {
		return cardTeamList;
	}

	public void setCardTeamList(List<CardTeamOwner> cardTeamList) {
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
	public String addCardClientOwner(){
		cardclientownerownerservice.addCardClientOwner(cardclientowner);
		return SUCCESS;
	}
	
	public String queryCardClientOwner(){
		
		if(cardclientownerownerservice.queryCardClientOwner()!=null){
			list=cardclientownerownerservice.queryCardClientOwner();
			return SUCCESS;
		}
		else{
		return ERROR;
		}
	}
	public String updateCardClientOwner(){
		if(cardclientownerownerservice.getCardClientOwner(cardclientowner.getId())!=null){
			cardclientownerownerservice.updateCardClientOwner(cardclientowner);
			return SUCCESS;
		}
		else{
		return INPUT;
		}
	}
	public String delCardClientOwner(){
		if(cardclientownerownerservice.getCardClientOwner(getId())!=null){
			cardclientownerownerservice.delCardClientOwner(cardclientownerownerservice.getCardClientOwner(getId()));
			return SUCCESS;
		}
		else{
		return INPUT;
		}
	}
	
	public String changeCardClientOwner(){
		if(cardclientownerownerservice.getCardClientOwner(getId())!=null){
			cardclientowner=cardclientownerownerservice.getCardClientOwner(getId());
			cardTeamList=cardteamownerservice.queryCardTeamOwner();
			return SUCCESS;
		}
		else{
		return INPUT;
		}
		
	}
	public String queryById(){
		if(cardclientownerownerservice.queryCardClientOwnerByTeamId(getId())!=null){
			list=cardclientownerownerservice.queryCardClientOwnerByTeamId(getId());
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
		
			list=cardclientownerownerservice.queryCardClientOwner(name,teamname,workname);
			
			return SUCCESS;
	}
	
}
