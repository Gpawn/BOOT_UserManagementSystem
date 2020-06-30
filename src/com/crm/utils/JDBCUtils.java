package com.crm.utils;

import java.io.FileReader;
import java.io.IOException;
import java.net.URL;
import java.sql.*;
import java.util.Properties;

public class JDBCUtils {
    private static String url;
    private static String user;
    private static String password;
    private static String driver;
    static {
        try {
            //1.properties集合类
            Properties pro=new Properties();
            //2.加载文件
            //获取src路径下的文件的方式---->ClassLoader
            ClassLoader classLoader = JDBCUtils.class.getClassLoader();
            URL resoureUrl = classLoader.getResource("db.properties");
            String path = resoureUrl.getPath();

            pro.load(new FileReader(path));

            //3.获取属性,进行赋值
            url=pro.getProperty("jdbc.jdbcUrl");
            user=pro.getProperty("jdbc.user");
            password=pro.getProperty("jdbc.password");
            driver=pro.getProperty("jdbc.driverClass");
            try {
                Class.forName(driver);
            } catch (ClassNotFoundException e) {
                e.printStackTrace();
            }
        } catch (IOException e) {
            e.printStackTrace();
        }

    }


    /**
     * 文件的读取只需要读取一次即可,使用静态代码块执行(随着类的生成执行,并且只执行一次)
     */




    /**
     * 获取连接
     * @return 连接对象
     */
    public static Connection getConnection() throws SQLException {
        return DriverManager.getConnection(url,user,password);
    }

    /**
     * 释放资源
     * @param stm
     * @param connection
     * @param rs
     */

    public static void close(Statement stm, Connection connection,
                             ResultSet rs){

        if (null!=rs){
            try {
                rs.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

        if (null!=stm){
            try {
                stm.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        if (null!=connection){
            try {
                connection.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }


    }
    public static void close(Statement stm, Connection connection){

        if (null!=stm){
            try {
                stm.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        if (null!=connection){
            try {
                connection.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }


    }
}
