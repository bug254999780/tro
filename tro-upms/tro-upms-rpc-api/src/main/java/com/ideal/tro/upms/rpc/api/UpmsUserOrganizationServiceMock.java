package com.ideal.tro.upms.rpc.api;

import com.ideal.tro.upms.dao.model.UpmsUserOrganization;
import com.ideal.tro.common.base.BaseServiceMock;
import com.ideal.tro.upms.dao.mapper.UpmsUserOrganizationMapper;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * 降级实现UpmsUserOrganizationService接口
 * Created by shuzheng on 2017/3/20.
 */
public class UpmsUserOrganizationServiceMock extends BaseServiceMock<UpmsUserOrganization, UpmsUserOrganizationMapper> implements UpmsUserOrganizationService {

    private static Logger _log = LoggerFactory.getLogger(UpmsUserOrganizationServiceMock.class);

    @Override
    public int organization(String[] organizationIds, int id) {
        _log.info("UpmsUserOrganizationServiceMock => organization");
        return 0;
    }
}
