package com.oa.dao;

import java.util.List;

import com.oa.model.User;

public interface UserDAO {
	List getAll();//获得所有记录
    
    List queryUser(String fieldname,String value);//根据条件查询
    
    User getUser(int id);//根据ID获得记录
    
    void addUser(User user);//添加记录
    
    void updateUser(User user);//修改记录
    
    void deleteUser(User user);//删除记录
}
