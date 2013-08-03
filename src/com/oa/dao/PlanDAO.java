package com.oa.dao;

import java.util.List;

import com.oa.model.Plan;

public interface PlanDAO {
	List getAll();//������м�¼
	
    List queryPlan(int id);//���ָ��id���м�¼
    
    List queryPlan(String fieldname,String value);//����������ѯ
    
    Plan getPlan(int id);//����ID��ü�¼
    
    void addPlan(Plan plan);//��Ӽ�¼
    
    void updatePlan(Plan plan);//�޸ļ�¼
    
    void deletePlan(Plan plan);//ɾ����¼
}
