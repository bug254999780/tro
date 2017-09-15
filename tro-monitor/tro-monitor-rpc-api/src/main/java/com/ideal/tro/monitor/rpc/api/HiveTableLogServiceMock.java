package com.ideal.tro.monitor.rpc.api;

import com.ideal.tro.common.base.BaseServiceMock;
import com.ideal.tro.monitor.dao.mapper.HiveTableLogMapper;
import com.ideal.tro.monitor.dao.model.hive.HiveTableLog;

/**
* 降级实现HiveTableLogService接口
* Created by shuzheng on 2017/9/14.
*/
public class HiveTableLogServiceMock extends BaseServiceMock< HiveTableLog,HiveTableLogMapper> implements HiveTableLogService {
    @Override
    public int selectCountFromHive(String tableName, String yyyyMMdd) {
        return 0;
    }
}
