package com.ideal.tro.monitor.service;

import com.ideal.tro.monitor.dao.model.hive.HiveTable;
import com.ideal.tro.monitor.dao.model.hive.HiveTableLog;
import com.ideal.tro.monitor.rpc.api.HiveTableLogService;
import com.ideal.tro.monitor.rpc.api.HiveTableService;
import com.xiaoleilu.hutool.date.DateField;
import com.xiaoleilu.hutool.date.DateTime;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.transaction.TransactionConfiguration;

import java.util.List;

/**
 * 单元测试
 * Created by shuzheng on 2017/2/19.
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({
        "classpath:applicationContext.xml",
        "classpath:META-INF/spring/applicationContext-jdbc.xml",
        "classpath:META-INF/spring/applicationContext-listener.xml"
})
@TransactionConfiguration(transactionManager = "transactionManager", defaultRollback = true)
public class HiveTableLogServiceTest {
    private static Logger _log = LoggerFactory.getLogger(HiveTableLogServiceTest.class);

    @Autowired
    private HiveTableLogService hiveTableLogService;


    @Autowired
    private HiveTableService hiveTablService;


    @Test
    public void index() {
        String yyyyMMdd = DateTime.now().offset(DateField.DAY_OF_YEAR, -2).toString("yyyyMMdd");
        HiveTable hiveTable = new HiveTable();
        hiveTable.setState("1");
        List<HiveTable> list = hiveTablService.select(hiveTable);
        for (HiveTable t : list) {
            _log.info(t.toString());
            String tableName = t.getTableName();
            String description = t.getDescription();
            int i = hiveTableLogService.selectCountFromHive(tableName, yyyyMMdd);
            _log.info("任务表{},跑数日期{},总数{}", tableName, yyyyMMdd, i);
            HiveTableLog hiveTableLog = new HiveTableLog();
            hiveTableLog.setDescription("test");
            hiveTableLog.setJobTime(yyyyMMdd);
            hiveTableLog.setJobName(tableName);
            hiveTableLog.setName(description);
            _log.info("{}", hiveTableLogService.save(hiveTableLog));
        }


    }


}
