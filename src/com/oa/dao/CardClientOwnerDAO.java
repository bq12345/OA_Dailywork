package com.oa.dao;

import java.util.List;

import com.oa.model.CardClientOwner;

public interface CardClientOwnerDAO {
	
	List getAll();//������м�¼
	
    List queryCardClientOwner(int id);//���ָ��id���м�¼
    
    public List queryCardClientOwner(String clientvalue,String teamvalue,String workvalue);
    
    CardClientOwner getCardClientOwner(int id);//����ID��ü�¼
    
    void addCardClientOwner(CardClientOwner cardclientowner);//��Ӽ�¼
    
    void updateCardClientOwner(CardClientOwner cardclientowner);//�޸ļ�¼
    
    void deleteCardClientOwner(CardClientOwner cardclientowner);//ɾ����¼
}
