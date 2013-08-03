package com.oa.dao;

import java.util.List;

import com.oa.model.Notice;

public interface NoticeDAO {
	List getAll();//获得所有记录
	
    List queryNotice(int id);//获得指定id所有记录
    
    List queryNotice(String fieldname,String value);//根据条件查询
    
    Notice getNotice(int id);//根据ID获得记录
    
    void addNotice(Notice notice);//添加记录
    
    void updateNotice(Notice notice);//修改记录
    
    void deleteNotice(Notice notice);//删除记录
}
