package com.crm.dao.customer;

import org.apache.poi.ss.formula.functions.T;

public abstract class ICustomerDao {
    public abstract void save(T entity);
    public abstract void update(T entity);
    public abstract void delete(T entity);
}
