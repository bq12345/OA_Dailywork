package com.oa.dao;

import java.util.List;

import com.oa.model.CardTeamOwner;

public interface CardTeamOwnerDAO {
	List getAll();//������м�¼
	
    List queryCardTeamOwner(int id);//���ָ��id���м�¼
    
    List queryCardTeamOwner(String fieldname,String value);//����������ѯ
    
    CardTeamOwner getCardTeamOwner(int id);//����ID��ü�¼
    
    void addCardTeamOwner(CardTeamOwner cardteamowner);//��Ӽ�¼
    
    void updateCardTeamOwner(CardTeamOwner cardteamowner);//�޸ļ�¼
    
    void deleteCardTeamOwner(CardTeamOwner cardteamowner);//ɾ����¼
}
