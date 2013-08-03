package com.oa.dao;

import java.util.List;

import com.oa.model.CardTeam;

public interface CardTeamDAO {
	List getAll();//获得所有记录
	
    List queryCardTeam(int id);//获得指定id所有记录
    
    List queryCardTeam(String fieldname,String value);//根据条件查询
    
    CardTeam getCardTeam(int id);//根据ID获得记录
    
    void addCardTeam(CardTeam cardteam);//添加记录
    
    void updateCardTeam(CardTeam cardteam);//修改记录
    
    void deleteCardTeam(CardTeam cardteam);//删除记录
}
