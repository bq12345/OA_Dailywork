package com.oa.dao;

import java.util.List;

import com.oa.model.Notice;

public interface NoticeDAO {
	List getAll();//������м�¼
	
    List queryNotice(int id);//���ָ��id���м�¼
    
    List queryNotice(String fieldname,String value);//����������ѯ
    
    Notice getNotice(int id);//����ID��ü�¼
    
    void addNotice(Notice notice);//��Ӽ�¼
    
    void updateNotice(Notice notice);//�޸ļ�¼
    
    void deleteNotice(Notice notice);//ɾ����¼
}
