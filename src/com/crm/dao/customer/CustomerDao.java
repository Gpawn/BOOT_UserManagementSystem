package com.crm.dao.customer;

import com.crm.dao.DaoHibernate;
import com.crm.entity.sysuser.CustomerEntity;
import com.crm.utils.HibernateUtil;
import org.hibernate.Session;
import org.hibernate.query.Query;

import java.util.ArrayList;
import java.util.List;

public class CustomerDao extends DaoHibernate<CustomerEntity> {
    public List getList() {
        return list;
    }

    public void setList(List list) {
        this.list = list;
    }

    List list=null;
    //根据id删除当前记录
    public int delete(int id) {
        return this.delete(CustomerEntity.class,id);
    }
    //根据Id数组删除多条记录
    public int deleteList(int... ids) {
        return this.deleteList(CustomerEntity.class,ids);
    }
    public int insert(int id) {
        return this.insert(id);
    }
    //根据Id数组删除多条记录
    public int insertList(int... ids) {
        return this.insertList(ids);
    }
    /*按条件查询
    客户名字
    客户来源
    所属行业
    客户级别
     */
    public List<CustomerEntity> findByCondition(String condition){
        String hql="from CustomerEntity";
        String custFields[]= {"id","custName","custSource","custIndustry",
                "custLevel","custPhone","custMobile"};
        List<CustomerEntity> custs1=findByFields(hql,custFields,condition);
        List<CustomerEntity> custs2=new ArrayList<>();
        for(CustomerEntity customer:custs1) {
            if (customer!=null){
                custs2.add(customer);
            }
        }
        return custs2;
    }
    public CustomerEntity findById(int id) {
        CustomerEntity customer=findById(CustomerEntity.class,id);
        return customer;
    }

    /**
     *
     * @param conditions
     * 0:客户明字
     * 1:客户来源
     * 2:所属行业
     * 3:客户级别
     * 存放选择器的内容
     * @return
     */

    public List<CustomerEntity> findBySelector(String[] conditions){
        int[] haveCond=new int[conditions.length];
        Session s = HibernateUtil.getThreadLocalSession();

        int j=1;//从1开始,防止haveCond[0]=0这个数组的默认值导致错误
        //判断哪几个选择器有数据i,并记录他的位置
        for (int i = 0; i < conditions.length; i++) {
            String condition = conditions[i];
            if (condition!=null){
                haveCond[j++]=i;
            }
        }
        //如果一个都没填写
        boolean isAllZero=true;
        for (int i = 0; i < haveCond.length; i++) {
            int i1 = haveCond[i];
            if (i1!=0){
                isAllZero=false;
            }

        }
        //如果全部是0,说明没有填写任何情况
        if (isAllZero){
            //选择全部数据
            String hql="Select cut From CustomerEntity cut";
            Query query=s.createQuery(hql).setFirstResult(1).setMaxResults(10);
            list=query.list();

        }



        //获取客户id和在dict中的具体名称
        String hql="SELECT custId,dictItemName FROM CustomerEntity," +
                "BaseDictEntity WHERE dictTypeCode=2  and " +
                "custSource=6 and dictSort=2";
//        System.out.println("========Query.list=======");
//        System.out.println(Arrays.toString(list.toArray()));
//        System.out.println("========Query.list=======");
        return list;
    }

    /**
     * 复写该方法,设置开始位置pageno
     * @param conditions
     * @param currentpage
     * @return
     */
    public List<CustomerEntity> findBySelector(String[] conditions,
                                           long currentpage){
        int[] haveCond=new int[conditions.length];
        Session s = HibernateUtil.getThreadLocalSession();

        int j=1;//从1开始,防止haveCond[0]=0这个数组的默认值导致错误
        //判断哪几个选择器有数据i,并记录他的位置
        for (int i = 0; i < conditions.length; i++) {
            String condition = conditions[i];
            if (condition!=null){
                haveCond[j++]=i;
            }
        }
        //如果一个都没填写
        boolean isAllZero=true;
        for (int i = 0; i < haveCond.length; i++) {
            int i1 = haveCond[i];
            if (i1!=0){
                isAllZero=false;
            }

        }
        //如果全部是0,说明没有填写任何情况
        if (isAllZero){
            //选择全部数据
            String hql="Select cut From CustomerEntity cut";
            Query query=
                    s.createQuery(hql).setFirstResult((int)currentpage-1).setMaxResults(10);
            list=query.list();

        }

        return list;
    }



}
