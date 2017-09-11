package com.ideal.tro.upms.rpc.api;

import com.ideal.tro.upms.dao.mapper.UpmsUserRoleMapper;
import com.ideal.tro.upms.dao.model.UpmsUserRole;
import com.ideal.tro.common.base.BaseServiceMock;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * 降级实现UpmsUserRoleService接口
 * Created by shuzheng on 2017/3/20.
 */
public class UpmsUserRoleServiceMock extends BaseServiceMock<UpmsUserRole, UpmsUserRoleMapper> implements UpmsUserRoleService {

    private static Logger _log = LoggerFactory.getLogger(UpmsUserRoleServiceMock.class);

    @Override
    public int role(String[] roleIds, int id) {
        _log.info("UpmsUserRoleServiceMock => role");
        return 0;
    }
}
