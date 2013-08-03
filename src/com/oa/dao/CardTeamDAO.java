package com.oa.dao;

import java.util.List;

import com.oa.model.CardTeam;

public interface CardTeamDAO {
	List getAll();//������м�¼
	
    List queryCardTeam(int id);//���ָ��id���м�¼
    
    List queryCardTeam(String fieldname,String value);//����������ѯ
    
    CardTeam getCardTeam(int id);//����ID��ü�¼
    
    void addCardTeam(CardTeam cardteam);//��Ӽ�¼
    
    void updateCardTeam(CardTeam cardteam);//�޸ļ�¼
    
    void deleteCardTeam(CardTeam cardteam);//ɾ����¼
}
