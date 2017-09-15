package com.ideal.tro.monitor.rpc.api;

import com.ideal.tro.common.base.BaseService;
import com.ideal.tro.monitor.dao.model.hive.HiveTableLog;

/**
 * HiveTableLogService接口
 * Created by xqm on 2017/9/14.
 */
public interface HiveTableLogService extends BaseService<HiveTableLog> {
    int selectCountFromHive(String tableName, String yyyyMMdd);
}