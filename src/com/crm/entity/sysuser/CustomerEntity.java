package com.crm.entity.sysuser;

import javax.persistence.*;
import java.sql.Timestamp;
import java.util.Objects;

@Entity
@Table(name = "customer", schema = "boot_crm")
public class CustomerEntity {
    private int custId;
    private String custName;
    private Integer custUserId;
    private Integer custCreateId;
    private String custSource;
    private String custIndustry;
    private String custLevel;
    private String custLinkman;
    private String custPhone;
    private String custMobile;
    private String custZipcode;
    private String custAddress;
    private Timestamp custCreatetime;
    private Integer rows;
    private Integer start;

    @Id
    @Column(name = "cust_id")
    public int getCustId() {
        return custId;
    }

    public void setCustId(int custId) {
        this.custId = custId;
    }

    @Basic
    @Column(name = "cust_name")
    public String getCustName() {
        return custName;
    }

    public void setCustName(String custName) {
        this.custName = custName;
    }

    @Basic
    @Column(name = "cust_user_id")
    public Integer getCustUserId() {
        return custUserId;
    }

    public void setCustUserId(Integer custUserId) {
        this.custUserId = custUserId;
    }

    @Basic
    @Column(name = "cust_create_id")
    public Integer getCustCreateId() {
        return custCreateId;
    }

    public void setCustCreateId(Integer custCreateId) {
        this.custCreateId = custCreateId;
    }

    @Basic
    @Column(name = "cust_source")
    public String getCustSource() {
        return custSource;
    }

    public void setCustSource(String custSource) {
        this.custSource = custSource;
    }

    @Basic
    @Column(name = "cust_industry")
    public String getCustIndustry() {
        return custIndustry;
    }

    public void setCustIndustry(String custIndustry) {
        this.custIndustry = custIndustry;
    }

    @Basic
    @Column(name = "cust_level")
    public String getCustLevel() {
        return custLevel;
    }

    public void setCustLevel(String custLevel) {
        this.custLevel = custLevel;
    }

    @Basic
    @Column(name = "cust_linkman")
    public String getCustLinkman() {
        return custLinkman;
    }

    public void setCustLinkman(String custLinkman) {
        this.custLinkman = custLinkman;
    }

    @Basic
    @Column(name = "cust_phone")
    public String getCustPhone() {
        return custPhone;
    }

    public void setCustPhone(String custPhone) {
        this.custPhone = custPhone;
    }

    @Basic
    @Column(name = "cust_mobile")
    public String getCustMobile() {
        return custMobile;
    }

    public void setCustMobile(String custMobile) {
        this.custMobile = custMobile;
    }

    @Basic
    @Column(name = "cust_zipcode")
    public String getCustZipcode() {
        return custZipcode;
    }

    public void setCustZipcode(String custZipcode) {
        this.custZipcode = custZipcode;
    }

    @Basic
    @Column(name = "cust_address")
    public String getCustAddress() {
        return custAddress;
    }

    public void setCustAddress(String custAddress) {
        this.custAddress = custAddress;
    }

    @Basic
    @Column(name = "cust_createtime")
    public Timestamp getCustCreatetime() {
        return custCreatetime;
    }

    public void setCustCreatetime(Timestamp custCreatetime) {
        this.custCreatetime = custCreatetime;
    }

    @Basic
    @Column(name = "rows")
    public Integer getRows() {
        return rows;
    }

    public void setRows(Integer rows) {
        this.rows = rows;
    }

    @Basic
    @Column(name = "start")
    public Integer getStart() {
        return start;
    }

    public void setStart(Integer start) {
        this.start = start;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        CustomerEntity that = (CustomerEntity) o;
        return custId == that.custId &&
                Objects.equals(custName, that.custName) &&
                Objects.equals(custUserId, that.custUserId) &&
                Objects.equals(custCreateId, that.custCreateId) &&
                Objects.equals(custSource, that.custSource) &&
                Objects.equals(custIndustry, that.custIndustry) &&
                Objects.equals(custLevel, that.custLevel) &&
                Objects.equals(custLinkman, that.custLinkman) &&
                Objects.equals(custPhone, that.custPhone) &&
                Objects.equals(custMobile, that.custMobile) &&
                Objects.equals(custZipcode, that.custZipcode) &&
                Objects.equals(custAddress, that.custAddress) &&
                Objects.equals(custCreatetime, that.custCreatetime) &&
                Objects.equals(rows, that.rows) &&
                Objects.equals(start, that.start);
    }

    @Override
    public int hashCode() {
        return Objects.hash(custId, custName, custUserId, custCreateId, custSource, custIndustry, custLevel, custLinkman, custPhone, custMobile, custZipcode, custAddress, custCreatetime, rows, start);
    }
}
