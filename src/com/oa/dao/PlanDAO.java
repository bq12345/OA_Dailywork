package com.oa.dao;

import java.util.List;

import com.oa.model.Plan;

public interface PlanDAO {
	List getAll();//获得所有记录
	
    List queryPlan(int id);//获得指定id所有记录
    
    List queryPlan(String fieldname,String value);//根据条件查询
    
    Plan getPlan(int id);//根据ID获得记录
    
    void addPlan(Plan plan);//添加记录
    
    void updatePlan(Plan plan);//修改记录
    
    void deletePlan(Plan plan);//删除记录
}
