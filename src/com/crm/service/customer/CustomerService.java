package com.crm.service.customer;

import java.util.List;

import javax.annotation.Resource;

import com.crm.dao.customer.CustomerDao;
import com.crm.entity.sysuser.CustomerEntity;
import org.springframework.stereotype.Service;

@Service
public class CustomerService implements ICustomerService {

	@Resource
	private CustomerDao customerDao;

	static{
		System.out.println("==============CustomerService==========");
		System.out.println("我来调用service中的findbySelector方法");
		System.out.println("==============CustomerService==========");
	}
	/* (non-Javadoc)
	 * @see com.edu.service.card.ICardService#findByCondition(java.lang.String, java.lang.String)
	 */
	@Override
	public List<CustomerEntity> findByCondition(String condition) {
		return customerDao.findByCondition(condition);
	}

	/* (non-Javadoc)
	 * @see com.edu.service.card.ICardService#findById(int, java.lang.String)
	 */
	@Override
	public CustomerEntity findById(int id) {
		return customerDao.findById(id);
	}

	/* (non-Javadoc)
	 * @see com.edu.service.card.ICardService#delete(int)
	 */
	@Override
	public int delete(int id) {
		return customerDao.delete(id);
	}
	/* (non-Javadoc)
	 * @see com.edu.service.card.ICardService#insert(com.edu.entity.card.Card)
	 */
	@Override
	public int insert(CustomerEntity card) {
		 customerDao.insert(card);
		 return 1;
	}
	/* (non-Javadoc)
	 * @see com.edu.service.card.ICardService#update(com.edu.entity.card.Card)
	 */
	@Override
	public int update(CustomerEntity card) {
		return customerDao.update(card);
	}
	/* (non-Javadoc)
	 * @see com.edu.service.card.ICardService#insertList(java.util.List)
	 */
	@Override
	public int insertList(List<CustomerEntity> cardList) {
		return customerDao.insertList(cardList);
	}
	/* (non-Javadoc)
	 * @see com.edu.service.card.ICardService#deleteList(int[])
	 */
	@Override
	public int deleteList(int[] ids) {
		return customerDao.deleteList(ids);
	}

    @Override
    public List<CustomerEntity> findbySelector(String[] conditions) {
        return customerDao.findBySelector(conditions);
    }


    /* (non-Javadoc)
	 * @see com.edu.service.card.ICardService#getCardDao()
	 */
	
	public CustomerDao getCustomerDao() {
		return customerDao;
	}

	/* (non-Javadoc)
	 * @see com.edu.service.card.ICardService#setCardDao(com.edu.dao.card.CardDao)
	 */
	
	public void setCustomerDao(CustomerDao customerDao) {
		this.customerDao = customerDao;
	}



}
