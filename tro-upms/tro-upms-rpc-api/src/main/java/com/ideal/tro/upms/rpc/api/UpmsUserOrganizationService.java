package com.ideal.tro.upms.rpc.api;


import com.ideal.tro.upms.dao.model.UpmsUserOrganization;
import com.ideal.tro.common.base.BaseService;

/**
 * UpmsUserOrganizationService接口
 * Created by shuzheng on 2017/3/20.
 */

public interface UpmsUserOrganizationService extends BaseService<UpmsUserOrganization> {

    /**
     * 用户组织
     *
     * @param organizationIds 组织ids
     * @param id              用户id
     * @return
     */
    int organization(String[] organizationIds, int id);

}