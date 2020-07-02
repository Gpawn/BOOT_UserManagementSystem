package com.crm.utils;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;

/**
 * 分页工具类
 *
 */
public class PageBean {

    private int page = 1;// 页码

    private int rows = 10;// 页大小

    private int total = 0;// 总记录数
    private int maxPage;

    public void setMaxPage(int maxPage) {
        this.maxPage = maxPage;
    }

    private boolean pagination = true;// 是否分页

    private Map<String, String[]>  paMap = new HashMap<>();

    private String url;

    public void setRequest(HttpServletRequest req) {
        Map<String, String[]> parameterMap = req.getParameterMap();
        StringBuffer url = req.getRequestURL();
        //保存上一次请求所携带的参数
        this.setPaMap(req.getParameterMap());
        this.setUrl(req.getRequestURL().toString());

        //在jsp页面来控制是否分页
//        this.setPagination(req.getParameter("pagination"));
        //在jsp页面控制一页展示多少条信息
//        this.setRows(req.getParameter("rows"));
        this.setPage(req.getParameter("page"));
    }

    //setPage重载
    private void setPage(String page) {
        this.page = StringUtils.isNotBlank(page) ? Integer.valueOf(page):this.page;

    }

    //setPagination重载
    public void setPagination(String pagination) {
        this.pagination = StringUtils.isNotBlank(pagination) ? !"false".equals(pagination):this.pagination;

    }

    //setRows重载
    public void setRows(String rows) {
        this.rows = StringUtils.isNotBlank(rows)?Integer.valueOf(rows):this.rows;

    }

    public Map<String, String[]> getPaMap() {
        return paMap;
    }

    public void setPaMap(Map<String, String[]> paMap) {
        this.paMap = paMap;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public PageBean() {
        super();
    }

    public int getPage() {
        return page;
    }

    public void setPage(int page) {
        this.page = page;
    }

    public int getRows() {
        return rows;
    }

    public void setRows(int rows) {
        this.rows = rows;
    }

    public int getTotal() {
        return total;
    }

    public void setTotal(int total) {
        this.total = total;
    }

    public void setTotal(String total) {
        this.total = Integer.parseInt(total);
    }

    public boolean isPagination() {
        return pagination;
    }

    public void setPagination(boolean pagination) {
        this.pagination = pagination;
    }

    /**
     * 获得起始记录的下标
     *
     * @return
     */
    public int getStartIndex() {
        return (this.page - 1) * this.rows;
    }

    @Override
    public String toString() {
        return "PageBean [page=" + page + ", rows=" + rows + ", total=" + total + ", pagination=" + pagination + "]";
    }

    /**
     * 获取最大页码数
     * @return
     */
    public int getMaxPage() {

        return this.total % this.rows == 0 ? this.total / this.rows : this.total / this.rows+1;
    }

    /**
     * 下一页
     * @return
     */
    public int getNexPage() {

        return this.page < this.getMaxPage() ? this.page+1 : this.page;
    }

    /**
     * 上一页
     * @return
     */
    public int getPreviousPage() {

        return this.page > 1 ? this.page-1 : this.page;
    }

}