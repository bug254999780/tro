package com.ideal.tro.upms.rpc.api;

import com.ideal.tro.common.base.BaseServiceMock;
import com.ideal.tro.upms.dao.mapper.UpmsUserMapper;
import com.ideal.tro.upms.dao.model.UpmsUser;

/**
 * 降级实现UpmsUserService接口
 * Created by shuzheng on 2017/3/20.
 */
public class UpmsUserServiceMock extends BaseServiceMock<UpmsUser, UpmsUserMapper> implements UpmsUserService {

    @Override
    public UpmsUser createUser(UpmsUser upmsUser) {
        return null;
    }
}
