package com.oa.action;

import java.util.List;

import com.oa.model.Type;
import com.oa.service.TypeService;
import com.opensymphony.xwork2.ActionSupport;

public class TypeAction extends ActionSupport{
	private Type type;
	private TypeService typeservice;
	private int id;
	private List<Type> list;
	
	public Type getType() {
		return type;
	}

	public void setType(Type type) {
		this.type = type;
	}

	public TypeService getTypeservice() {
		return typeservice;
	}

	public void setTypeservice(TypeService typeservice) {
		this.typeservice = typeservice;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public List<Type> getList() {
		return list;
	}

	public void setList(List<Type> list) {
		this.list = list;
	}

	/*
	 * 下面是处理请求的方法
	 */
	public String addType(){
		typeservice.addType(type);
		return SUCCESS;
	}
	
	public String queryType(){
		
		if(typeservice.queryType()!=null){
			list=typeservice.queryType();
			return SUCCESS;
		}
		else{
		return ERROR;
		}
	}
	public String updateType(){
		if(typeservice.getType(type.getId())!=null){
			typeservice.updateType(type);
			return SUCCESS;
		}
		else{
		return INPUT;
		}
	}
	public String delType(){
		if(typeservice.getType(getId())!=null){
			typeservice.delType(typeservice.getType(getId()));
			return SUCCESS;
		}
		else{
		return INPUT;
		}
	}
	
	public String changeType(){
		if(typeservice.getType(getId())!=null){
			type=typeservice.getType(getId());
			return SUCCESS;
		}
		else{
		return INPUT;
		}
	}
	
}
