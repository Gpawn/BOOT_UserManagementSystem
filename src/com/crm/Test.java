package com.crm;

import com.crm.utils.JDBCUtils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Test {
    public static void main(String[] args) {

        Connection conn=null;
        try {
            conn = JDBCUtils.getConnection();
            String sql="select * from boot_crm.sys_user where user_id=1";
            PreparedStatement pstm = conn.prepareStatement(sql);
            ResultSet rs = pstm.executeQuery();
            if (rs.next())
            {
                System.out.println(rs.getString("user_name"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
