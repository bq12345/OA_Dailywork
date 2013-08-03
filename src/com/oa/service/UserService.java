package com.oa.service;

import java.util.List;

import com.oa.dao.UserDAO;
import com.oa.model.User;

public class UserService {
	private UserDAO userDAO;

	public UserDAO getUserDAO() {
		return userDAO;
	}

	public void setUserDAO(UserDAO userDAO) {
		this.userDAO = userDAO;
	}
	
	public User getUser(int userId) {
		return userDAO.getUser(userId);
	}

	public void updateUser(User user) {
		userDAO.updateUser(user);
	}
	
	public List queryUser(String fieldname, String value) {
		return userDAO.queryUser(fieldname, value);
	}
	
	public List queryUser() {
		return userDAO.getAll();
	}
	
	public void addUser(User user) {
		userDAO.addUser(user);
	}
	
	public void delUser(User user) {
		userDAO.deleteUser(user);
	}
}
