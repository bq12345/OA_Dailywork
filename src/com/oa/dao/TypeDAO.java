package com.oa.dao;

import java.util.List;

import com.oa.model.Type;

public interface TypeDAO {
	
	List getAll();//������м�¼ 
    
    Type getType(int id);//����ID��ü�¼
    
    void addType(Type type);//��Ӽ�¼
    
    void updateType(Type type);//�޸ļ�¼
    
    void deleteType(Type type);//ɾ����¼
}
