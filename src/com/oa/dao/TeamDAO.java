package com.oa.dao;

import java.util.List;

import com.oa.model.Team;

public interface TeamDAO {
	
	List getAll();//������м�¼ 
    
    Team getTeam(int id);//����ID��ü�¼
    
    void addTeam(Team team);//��Ӽ�¼
    
    void updateTeam(Team team);//�޸ļ�¼
    
    void deleteTeam(Team team);//ɾ����¼
}
