package com.ideal.tro.monitor.common.util;

import com.ideal.tro.common.util.ConfigUtil;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by Administrator on 2017/8/7.
 */
public class HiveJdbcClient {
    private static final Logger logger = LoggerFactory.getLogger(HiveJdbcClient.class);

    public static final char UNDERLINE = '_';
    static ConfigUtil util = new ConfigUtil("/db.properties");
    private static String driverName;
    private static String url;
    private static String user;
    private static String password;


    private static class LazyHolder {
        private static final HiveJdbcClient INSTANCE = new HiveJdbcClient();
    }


    public static final HiveJdbcClient getInstance() {
        return LazyHolder.INSTANCE;
    }

    /**
     * 初始化参数
     *
     * @author linbingwen
     * @since 2016年10月20日
     */
    private void init() {
        driverName = util.getString("driver");
        url = util.getString("url");
        user = util.getString("user");
        password = util.getString("password");
    }

    private HiveJdbcClient() {
        init();
    }

    /**
     * 获取连接
     *
     * @return
     * @throws ClassNotFoundException
     * @throws SQLException
     * @author linbingwen
     * @since 2016年10月20日
     */
    private Connection getConnection() throws ClassNotFoundException, SQLException {
        Class.forName(driverName);
        Connection conn = DriverManager.getConnection(url, user, password);
        return conn;
    }

    /**
     * 释放资源
     *
     * @param conn
     * @param st
     * @param rs
     * @author linbingwen
     * @since 2016年8月31日
     */
    public void release(Connection conn, Statement st, ResultSet rs) {
        if (rs != null) {
            try {
                rs.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
            rs = null;
        }
        if (st != null) {
            try {
                st.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
            st = null;
        }
        if (conn != null) {
            try {
                conn.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public List<String> export(String sql) throws ClassNotFoundException, SQLException {
        logger.info("hive2es sql :{}", sql);
        Connection conn = getConnection();
        //ResultSet tableRs = null; // 存库元数据
        //ResultSet colRs = null;//存储表元数据
        ResultSet rs = null;
        Statement st = null;
        List<String> list = new ArrayList<>();
        try {

            //con = new HiveDBConnection().getInitHiveConn();
            st = conn.createStatement();
            st.executeUpdate("set mapred.job.name=" + sql);
            st.executeUpdate("set mapred.job.queue.name=queue");
            st.executeUpdate("add jar hdfs:///udf/elasticsearch-hadoop-5.4.0.jar");
            st.executeUpdate("set mapred.reduce.tasks=20;");
            // ResultSet rs = st.executeQuery("select client_nbr from tag_wide_table where  " + elasticSearch.getWhereValue());

            rs = st.executeQuery(sql);
            rs.setFetchSize(10000);
            while (rs.next()) {

                System.out.println("执行状态=" + rs);
                System.out.println(rs.getCursorName());
                //list.add(rs.getString(1));
            }

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            release(conn, st, rs);
        }
        return list;
    }

    public int selectCount (String table,String date) throws ClassNotFoundException, SQLException {
        logger.info("hive sql table:{},date:{}",table ,date);
        String jobName=table+"-"+date;
        Connection conn = getConnection();
        Statement stmt=null;
        ResultSet res =null;
        int count=0;
        try {
            stmt = conn.createStatement();
            stmt.executeUpdate("set mapred.job.queue.name=queue");
            stmt.executeUpdate("set mapred.job.name="+jobName);
            stmt.executeUpdate("set mapred.reduce.tasks=20;");
            res = stmt.executeQuery(" SELECT COUNT (*) FROM " + table + " where dt = " + date );
            while (res.next()) {
                System.out.println(res.getString(1));
                count= res.getInt(1);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            release(conn, stmt, res);
        }
        return count;
    }

    public static void main(String[] args) {

        //List<String> export = HiveJdbcClient.getInstance().export("select * from cust_info where dt=20170729 limit 10");
        // regular hive query
        Connection connection=null;
        Statement stmt=null;
        ResultSet res =null;


        try {
            connection = HiveJdbcClient.getInstance().getConnection();
            stmt = connection.createStatement();
            stmt.executeUpdate("set mapred.job.queue.name=queue");
            stmt.executeUpdate("set mapred.reduce.tasks=20;");
            String sql = "select count(*) from cust_info where dt='20170729' ";
            System.out.println("Running: " + sql);
            res = stmt.executeQuery(sql);
            while (res.next()) {
                System.out.println(res.getString(1));
            }
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            try {
                connection.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }

        }

    }

}
