package com.oa.dao;

import java.util.List;

import com.oa.model.Client;

public interface ClientDAO {
	List getAll();//获得所有记录
	
    List queryClient(int id);//获得指定id所有记录
    
    List queryClient(String fieldname,String value);//根据条件查询
    
    Client getClient(int id);//根据ID获得记录
    
    void addClient(Client client);//添加记录
    
    void updateClient(Client client);//修改记录
    
    void deleteClient(Client client);//删除记录
}
