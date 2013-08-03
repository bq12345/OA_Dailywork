package com.oa.dao;

import java.util.List;

import com.oa.model.Policy;

public interface PolicyDAO {
	List getAll();//获得所有记录
	
    List queryPolicy(int id);//获得指定id所有记录
    
    List queryPolicy(String fieldname,String value);//根据条件查询
    
    Policy getPolicy(int id);//根据ID获得记录
    
    void addPolicy(Policy policy);//添加记录
    
    void updatePolicy(Policy policy);//修改记录
    
    void deletePolicy(Policy policy);//删除记录
}
