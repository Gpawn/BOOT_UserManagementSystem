package com.crm.entity.sysuser;

import javax.persistence.*;
import java.util.Objects;

@Entity
@Table(name = "sys_user", schema = "boot_crm")
public class SysUserEntity {
    private int userId;
    private String userCode;
    private String userName;
    private String userPassword;
    private int userState;

    @Id
    @Column(name = "user_id")
    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    @Basic
    @Column(name = "user_code")
    public String getUserCode() {
        return userCode;
    }

    public void setUserCode(String userCode) {
        this.userCode = userCode;
    }

    @Basic
    @Column(name = "user_name")
    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    @Basic
    @Column(name = "user_password")
    public String getUserPassword() {
        return userPassword;
    }

    public void setUserPassword(String userPassword) {
        this.userPassword = userPassword;
    }

    @Basic
    @Column(name = "user_state")
    public int getUserState() {
        return userState;
    }

    public void setUserState(int userState) {
        this.userState = userState;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        SysUserEntity that = (SysUserEntity) o;
        return userId == that.userId &&
                userState == that.userState &&
                Objects.equals(userCode, that.userCode) &&
                Objects.equals(userName, that.userName) &&
                Objects.equals(userPassword, that.userPassword);
    }

    @Override
    public int hashCode() {
        return Objects.hash(userId, userCode, userName, userPassword, userState);
    }
}
