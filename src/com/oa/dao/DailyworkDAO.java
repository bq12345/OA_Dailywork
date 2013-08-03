package com.oa.dao;

import java.util.List;

import com.oa.model.Dailywork;

public interface DailyworkDAO  {
	
	List getAll();//������м�¼
	
	List queryDailywork(int id);//���ָ��id���м�¼
	        
    Dailywork getDailywork(int id);//����ID��ü�¼
    
    void addDailywork(Dailywork dailywork);//��Ӽ�¼
    
    void updateDailywork(Dailywork dailywork);//�޸ļ�¼
    
    void deleteDailywork(Dailywork dailywork);//ɾ����¼

}
