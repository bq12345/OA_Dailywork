package com.oa.dao;

import java.util.List;

import com.oa.model.Policy;

public interface PolicyDAO {
	List getAll();//������м�¼
	
    List queryPolicy(int id);//���ָ��id���м�¼
    
    List queryPolicy(String fieldname,String value);//����������ѯ
    
    Policy getPolicy(int id);//����ID��ü�¼
    
    void addPolicy(Policy policy);//��Ӽ�¼
    
    void updatePolicy(Policy policy);//�޸ļ�¼
    
    void deletePolicy(Policy policy);//ɾ����¼
}
