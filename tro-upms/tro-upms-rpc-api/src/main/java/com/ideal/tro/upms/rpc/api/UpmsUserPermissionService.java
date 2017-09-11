package com.ideal.tro.upms.rpc.api;

import com.alibaba.fastjson.JSONArray;
import com.ideal.tro.common.base.BaseService;
import com.ideal.tro.upms.dao.model.UpmsUserPermission;

/**
 * UpmsUserPermissionService接口
 * Created by shuzheng on 2017/3/20.
 */
public interface UpmsUserPermissionService extends BaseService<UpmsUserPermission> {

    /**
     * 用户权限
     *
     * @param datas 权限数据
     * @param id    用户id
     * @return
     */
    int permission(JSONArray datas, int id);

}