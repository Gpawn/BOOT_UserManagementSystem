package com.crm.service.customer;

import java.util.List;

import com.crm.entity.sysuser.CustomerEntity;

public interface ICustomerService {

	public abstract List<CustomerEntity> findByCondition(String condition);

	public abstract CustomerEntity findById(int id);

	public abstract int delete(int id);

	public abstract int insert(CustomerEntity card);

	public abstract int update(CustomerEntity card);

	public abstract int insertList(List<CustomerEntity> cardList);

	public abstract int deleteList(int[] ids);
	List<CustomerEntity> findbySelector(String[] conditions);


	

}