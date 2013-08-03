package com.oa.dao;

import java.util.List;

import com.oa.model.Client;

public interface ClientDAO {
	List getAll();//������м�¼
	
    List queryClient(int id);//���ָ��id���м�¼
    
    List queryClient(String fieldname,String value);//����������ѯ
    
    Client getClient(int id);//����ID��ü�¼
    
    void addClient(Client client);//��Ӽ�¼
    
    void updateClient(Client client);//�޸ļ�¼
    
    void deleteClient(Client client);//ɾ����¼
}
