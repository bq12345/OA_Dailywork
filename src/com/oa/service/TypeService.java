package com.oa.service;

import java.util.List;

import com.oa.dao.TypeDAO;
import com.oa.model.Type;

public class TypeService {
	private TypeDAO typeDAO;

	public TypeDAO getTypeDAO() {
		return typeDAO;
	}

	public void setTypeDAO(TypeDAO typeDAO) {
		this.typeDAO = typeDAO;
	}
	
	public Type getType(int typeId) {
		return typeDAO.getType(typeId);
	}

	public void updateType(Type type) {
		typeDAO.updateType(type);
	}
	
	public List queryType() {
		return typeDAO.getAll();
	}
	
	public void addType(Type type) {
		typeDAO.addType(type);
	}
	
	public void delType(Type type) {
		typeDAO.deleteType(type);
	}
}
