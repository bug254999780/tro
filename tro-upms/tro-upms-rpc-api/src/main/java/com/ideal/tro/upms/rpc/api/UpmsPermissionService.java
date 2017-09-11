package com.ideal.tro.upms.rpc.api;

import com.alibaba.fastjson.JSONArray;
import com.ideal.tro.common.base.BaseService;
import com.ideal.tro.upms.dao.model.UpmsPermission;

/**
 * UpmsPermissionService接口
 * Created by shuzheng on 2017/3/20.
 */
public interface UpmsPermissionService extends BaseService<UpmsPermission> {

    JSONArray getTreeByRoleId(Integer roleId);

    JSONArray getTreeByUserId(Integer usereId, Byte type);

}