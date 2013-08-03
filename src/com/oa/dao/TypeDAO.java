package com.oa.dao;

import java.util.List;

import com.oa.model.Type;

public interface TypeDAO {
	
	List getAll();//获得所有记录 
    
    Type getType(int id);//根据ID获得记录
    
    void addType(Type type);//添加记录
    
    void updateType(Type type);//修改记录
    
    void deleteType(Type type);//删除记录
}
