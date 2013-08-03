package com.oa.dao;

import java.util.List;

import com.oa.model.CardClientOwner;

public interface CardClientOwnerDAO {
	
	List getAll();//获得所有记录
	
    List queryCardClientOwner(int id);//获得指定id所有记录
    
    public List queryCardClientOwner(String clientvalue,String teamvalue,String workvalue);
    
    CardClientOwner getCardClientOwner(int id);//根据ID获得记录
    
    void addCardClientOwner(CardClientOwner cardclientowner);//添加记录
    
    void updateCardClientOwner(CardClientOwner cardclientowner);//修改记录
    
    void deleteCardClientOwner(CardClientOwner cardclientowner);//删除记录
}
