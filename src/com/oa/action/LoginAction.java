package com.oa.action;

import com.oa.model.User;
import com.oa.service.UserService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class LoginAction extends ActionSupport{
	private User user;
	private UserService userservice;
	private int id;
	private String password;
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public UserService getUserservice() {
		return userservice;
	}
	public void setUserservice(UserService userservice) {
		this.userservice = userservice;
	}
	

	@Override
	public String execute() throws Exception {
			
				User u=userservice.getUser(getId());
				
				if(u==null){
					this.addFieldError("loginError","您的登录信息有错或登录已经超时！");
					return INPUT;
				}
				
				if (!(u.getPassword().equals(getPassword()))) {
					this.addFieldError("loginError","您的登录信息有错或登录已经超时！");
					return INPUT;
				}
				ActionContext.getContext().getSession().put("user",u.getName());
				ActionContext.getContext().getSession().put("key",getId());
				return SUCCESS;
	}
	public String changeUser(){
		int id_key=(Integer) ActionContext.getContext().getSession().get("key");
		if(userservice.getUser(id_key)!=null){
			user=userservice.getUser(id_key);
			return SUCCESS;
		}
		else{
		return INPUT;
		}
	}
	public String updateUser(){
		if(userservice.getUser(user.getId())!=null){
			userservice.updateUser(user);
			return SUCCESS;
		}
		else{
		return INPUT;
		}
	}
	public String addUser(){
		if(user.getPassword()==null||user.getName()==null){
			return INPUT;
		}
			userservice.addUser(user);
			return SUCCESS;
	}
	
}
