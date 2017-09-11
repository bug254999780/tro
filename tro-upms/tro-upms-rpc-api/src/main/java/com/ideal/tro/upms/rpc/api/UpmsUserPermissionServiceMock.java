package com.ideal.tro.upms.rpc.api;

import com.alibaba.fastjson.JSONArray;
import com.ideal.tro.common.base.BaseServiceMock;
import com.ideal.tro.upms.dao.mapper.UpmsUserPermissionMapper;
import com.ideal.tro.upms.dao.model.UpmsUserPermission;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * 降级实现UpmsUserPermissionService接口
 * Created by shuzheng on 2017/3/20.
 */
public class UpmsUserPermissionServiceMock extends BaseServiceMock<UpmsUserPermission, UpmsUserPermissionMapper> implements UpmsUserPermissionService {

    private static Logger _log = LoggerFactory.getLogger(UpmsUserPermissionServiceMock.class);

    @Override
    public int permission(JSONArray datas, int id) {
        _log.info("UpmsUserPermissionServiceMock => permission");
        return 0;
    }

}
