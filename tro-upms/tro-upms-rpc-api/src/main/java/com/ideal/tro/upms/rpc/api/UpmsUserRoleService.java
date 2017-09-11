package com.ideal.tro.upms.rpc.api;



import com.ideal.tro.upms.dao.model.UpmsUserRole;
import com.ideal.tro.common.base.BaseService;


/**
 * UpmsUserRoleService接口
 * Created by shuzheng on 2017/3/20.
 */
public interface UpmsUserRoleService extends BaseService<UpmsUserRole> {

    /**
     * 用户角色
     *
     * @param roleIds 角色ids
     * @param id      用户id
     * @return
     */
    int role(String[] roleIds, int id);

}