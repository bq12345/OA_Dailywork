package com.oa.dao;

import java.util.List;

import com.oa.model.CardTeamOwner;

public interface CardTeamOwnerDAO {
	List getAll();//获得所有记录
	
    List queryCardTeamOwner(int id);//获得指定id所有记录
    
    List queryCardTeamOwner(String fieldname,String value);//根据条件查询
    
    CardTeamOwner getCardTeamOwner(int id);//根据ID获得记录
    
    void addCardTeamOwner(CardTeamOwner cardteamowner);//添加记录
    
    void updateCardTeamOwner(CardTeamOwner cardteamowner);//修改记录
    
    void deleteCardTeamOwner(CardTeamOwner cardteamowner);//删除记录
}
