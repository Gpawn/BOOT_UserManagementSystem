package com.crm.action;

import java.util.Arrays;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.crm.dao.customer.CustomerDao;
import com.crm.entity.sysuser.CustomerEntity;
import com.crm.service.customer.ICustomerService;
import com.crm.utils.HibernateUtil;
import com.crm.utils.PageBean;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.hibernate.Session;
import org.hibernate.query.Query;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionSupport;

@Namespace("/cust")
@ParentPackage("struts-default")  //表示继承的父包
public class CustomerAction extends ActionSupport {
	private static final long serialVersionUID = 1L;

	
	private CustomerEntity cust;  //传入提交值(插入记录)
	private CustomerDao customerDao=new CustomerDao();
	//提交页面——查询信息提交
	private String condition;//查询条件
	private String[] checkList; //可以选择多条记录的复选框所形成的记录序号的字符串
	private int id;        //单记录时的主键号
	
	private String order;    //设置查询结果排序方式：按记录号升序或降序（添加的先后次序）
	private long pageNo;    //设置查询结果要显示的分页页码号
	private int pageSize;    //设置查询结果要显示的分页，每页要显示的记录条数（当不设置时，不分页）

	private String customer_test1;
	private PageBean pageBean=new PageBean();


	public String getCustomer_test1() {
		return customer_test1;
	}

	public void setCustomer_test1(String customer_test1) {
		this.customer_test1 = customer_test1;
	}

	public String getCustomer_test2() {
		return customer_test2;
	}

	public void setCustomer_test2(String customer_test2) {
		this.customer_test2 = customer_test2;
	}

	private String customer_test2;







    //返回执行结果的返回信息
	private long recordCount;//查询满足条件的记录总条数
	private long pageCount;//查询出记录的总页数（按所设置的每页条数后，形成的页总数）
	private List<CustomerEntity> listCust;//传出查询结果集合
	private String msg;    //返回运行后的信息





	@Action( //表示请求的Action及处理方法
			value="insert",	   
			results={@Result(name="success",location="/find",type="redirectAction")}
		)	
	public String insert() throws Exception {
		customerDao.insert(cust);
		msg="插入一条记录成功！";
		return "success";
	}
	




	@Action( //表示请求的Action及处理方法
			value="insertList", 		   
			results={@Result(name="success",location="/find",type="redirectAction")}
		)	
	public String insertList() throws Exception {
		int n=customerDao.insertList(listCust);
		msg="插入一组（"+n+"条）记录成功！";
		return "success";
	}
	
	@Action( //表示请求的Action及处理方法
			value="delete", 		   
			results={@Result(name="success",location="/find",type="redirectAction")}
		)		
	public String delecte() throws Exception {
		customerDao.delete(id);
		msg="删除入一条记录成功！";
		return "success";
	}
	
	@Action( //表示请求的Action及处理方法
			value="delecteList", 		   
			results={@Result(name="success",location="/find",type="redirectAction")}
		)	
	public String delecteList() throws Exception {
		int ids[]=new int[checkList.length];
		for(int i=0;i<checkList.length;++i){
			ids[i]=Integer.parseInt(checkList[i]);
		}		
		int n=customerDao.deleteList(ids);
		msg="删除一组（"+n+"条）记录成功！";
		return "success";
	}


    //表示请求的Action及处理方法
	@Action(
			value="find", 		   
			results={@Result(name="success",location="/jsp/list.jsp")}
		)	
	public String find() throws Exception {
        String[] strs=new String[5];
//        System.out.println("================CustomerAction_find============");
//		HttpServletRequest request = ServletActionContext.getRequest();
//		System.out.println("This is test:"+customer_test1);
//		System.out.println("This is test2:"+customer_test2.equals(""));
//		System.out.println("================CustomerAction_find============");
		listCust =customerDao.findBySelector(new String[]{},pageNo);
//		session=ServletActionContext.getRequest().getSession();
//		session.setAttribute("condition", condition);
//		session.setAttribute("order", order);
		//设置显示行数
		pageBean.setRows(10);
		//设置总体大小
		pageBean.setTotal(listCust.size());
		//当前页面
		pageBean.setPage((int)pageNo);

        for (int i = 0; i < listCust.size(); i++) {
           if (listCust.get(i).getCustSource().equals("6")){
               listCust.get(i).setCustSource("电话营销");
           }
           if (listCust.get(i).getCustLevel().equals("22")){
               listCust.get(i).setCustLevel("普通客户");
           }


        }
        ServletActionContext.getRequest().setAttribute("custList",listCust);
        ServletActionContext.getRequest().setAttribute("pageBean",pageBean);
		return "success";
	}	
	
	@Action( //表示请求的Action及处理方法
			value="findupdate", 		   
			results={@Result(name="success",location="/list/update.jsp",type=
					"dispatcher")}
		)	
	public String findUpdate() throws Exception {
		cust=customerDao.findById(id);
		return "success";
	}



	
	

	
	@Action( //表示请求的Action及处理方法
			value="update", 		   
			results={@Result(name="success",location="/find",type="redirectAction")}
		)	
	public String update() throws Exception {				
		customerDao.update(cust);
		return "success";
	}

	public CustomerEntity getCard() {
		return cust;
	}

	public void setCard(CustomerEntity cust) {
		this.cust = cust;
	}

	public String getCondition() {
		return condition;
	}

	public void setCondition(String condition) {
		this.condition = condition;
	}

	

	public String[] getCheckList() {
		return checkList;
	}

	public void setCheckList(String checkList[]) {
		this.checkList = checkList;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getOrder() {
		return order;
	}

	public void setOrder(String order) {
		this.order = order;
	}

	public long getPageNo() {
		return pageNo;
	}

	public void setPageNo(long pageNo) {
		this.pageNo = pageNo;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public long getRecordCount() {
		return recordCount;
	}

	public void setRecordCount(long recordCount) {
		this.recordCount = recordCount;
	}

	public long getPageCount() {
		return pageCount;
	}

	public void setPageCount(long pageCount) {
		this.pageCount = pageCount;
	}

	public List<CustomerEntity> getListCust() {
		return listCust;
	}

	public void setListCust(List<CustomerEntity> listCust) {
		this.listCust = listCust;
	}

	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}

	
	
}
