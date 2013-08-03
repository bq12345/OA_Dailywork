package com.oa.dao;

import java.util.List;

import com.oa.model.Dailywork;

public interface DailyworkDAO  {
	
	List getAll();//获得所有记录
	
	List queryDailywork(int id);//获得指定id所有记录
	        
    Dailywork getDailywork(int id);//根据ID获得记录
    
    void addDailywork(Dailywork dailywork);//添加记录
    
    void updateDailywork(Dailywork dailywork);//修改记录
    
    void deleteDailywork(Dailywork dailywork);//删除记录

}
