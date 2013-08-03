package com.oa.dao;

import java.util.List;

import com.oa.model.CardClient;

public interface CardClientDAO {
	List getAll();//������м�¼
	
    List queryCardClient(int id);//���ָ��id���м�¼
    
    public List queryCardClient(String clientvalue,String teamvalue,String workvalue);
    CardClient getCardClient(int id);//����ID��ü�¼
    
    void addCardClient(CardClient cardclient);//��Ӽ�¼
    
    void updateCardClient(CardClient cardclient);//�޸ļ�¼
    
    void deleteCardClient(CardClient cardclient);//ɾ����¼
}
