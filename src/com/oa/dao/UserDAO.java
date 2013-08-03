package com.oa.dao;

import java.util.List;

import com.oa.model.User;

public interface UserDAO {
	List getAll();//������м�¼
    
    List queryUser(String fieldname,String value);//����������ѯ
    
    User getUser(int id);//����ID��ü�¼
    
    void addUser(User user);//��Ӽ�¼
    
    void updateUser(User user);//�޸ļ�¼
    
    void deleteUser(User user);//ɾ����¼
}
