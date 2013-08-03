package com.oa.dao;

import java.util.List;

import com.oa.model.CardClient;

public interface CardClientDAO {
	List getAll();//获得所有记录
	
    List queryCardClient(int id);//获得指定id所有记录
    
    public List queryCardClient(String clientvalue,String teamvalue,String workvalue);
    CardClient getCardClient(int id);//根据ID获得记录
    
    void addCardClient(CardClient cardclient);//添加记录
    
    void updateCardClient(CardClient cardclient);//修改记录
    
    void deleteCardClient(CardClient cardclient);//删除记录
}
