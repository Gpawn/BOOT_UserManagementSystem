package com.crm.dao;

import java.util.List;

public interface IBaseDao<T>{
	public int insert(T o);//将对象o，添加到数据库
	public int insertList(List<T> list);//将对象集合，添加到数据库
	public int update(T o);//利用对象o,修改当前记录
	public int deleteList(Class c, int... ids);//利用id集合，删除集合中对应id的记录
	public int delete(T o);//从数据库中删除一个记录o
	public int delete(Class c, int id);//利用关键字id从数据中删除一个记录
	public T findById(Class c, int id);//利用id查找一条记录
	public T findOne(String hql, String[] param); //查找单挑记录
	public List<T> find(String hql, String[] param);//查找所有对象
	public List<T> findPage(String hql, String[] param, int page, int size); //分页查找所有对象
	public int getCount(String hql, String[] param);
	public List<T> findByFields(String hql, String fields[], String condition);
}
