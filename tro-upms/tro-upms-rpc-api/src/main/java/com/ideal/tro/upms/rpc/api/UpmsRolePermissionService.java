package com.ideal.tro.upms.rpc.api;

import com.alibaba.fastjson.JSONArray;
import com.ideal.tro.upms.dao.model.UpmsRolePermission;
import com.ideal.tro.common.base.BaseService;


/**
 * UpmsRolePermissionService接口
 * Created by shuzheng on 2017/3/20.
 */
public interface UpmsRolePermissionService extends BaseService<UpmsRolePermission> {

    /**
     * 角色权限
     *
     * @param datas 权限数据
     * @param id    角色id
     * @return
     */
    int rolePermission(JSONArray datas, int id);

}