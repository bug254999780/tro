package com.ideal.tro.upms.rpc.api;


import com.ideal.tro.upms.dao.model.UpmsUser;
import com.ideal.tro.common.base.BaseService;


/**
 * UpmsUserService接口
 * Created by shuzheng on 2017/3/20.
 */
public interface UpmsUserService extends BaseService<UpmsUser> {

    UpmsUser createUser(UpmsUser upmsUser);

}