package com.oa.dao;

import java.util.List;

import com.oa.model.Team;

public interface TeamDAO {
	
	List getAll();//获得所有记录 
    
    Team getTeam(int id);//根据ID获得记录
    
    void addTeam(Team team);//添加记录
    
    void updateTeam(Team team);//修改记录
    
    void deleteTeam(Team team);//删除记录
}
