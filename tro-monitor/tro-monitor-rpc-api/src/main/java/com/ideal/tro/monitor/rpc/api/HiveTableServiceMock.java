package com.ideal.tro.monitor.rpc.api;

import com.ideal.tro.common.base.BaseServiceMock;
import com.ideal.tro.monitor.dao.mapper.HiveTableMapper;
import com.ideal.tro.monitor.dao.model.hive.HiveTable;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * 降级实现HiveTableService接口
 * Created by shuzheng on 2017/8/31.
 */
public class HiveTableServiceMock extends BaseServiceMock<HiveTable, HiveTableMapper> implements HiveTableService {
    private static Logger _log = LoggerFactory.getLogger(HiveTableServiceMock.class);
}
